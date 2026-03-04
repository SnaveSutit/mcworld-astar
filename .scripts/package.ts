import { join, relative } from 'node:path'
import { rm } from 'node:fs/promises'
import { AsyncZipOptions, AsyncZippable, zip as callbackZip, Unzipped } from 'fflate'
import { readdir } from 'node:fs/promises'
import { mkdir } from 'node:fs/promises'
import { cp } from 'node:fs/promises'

const DATAPACKS_PATH = 'datapacks'
const OUTPUT_PATH = 'dist'
const TEMP_PATH = join(OUTPUT_PATH, 'temp')

async function zip(data: AsyncZippable, options: AsyncZipOptions) {
	return new Promise<Uint8Array>((resolve, reject) =>
		callbackZip(data, options, (err, zipped) => {
			if (err) reject(err)
			else resolve(zipped)
		})
	)
}

interface TraverseDirectoryOptions {
	filter?: (path: string) => boolean
}

/**
 * Recursively traverses a directory and yields the relative paths of all files.
 */
async function* traverseDirectory(
	path: string,
	options?: TraverseDirectoryOptions
): AsyncIterable<string> {
	async function* traverse(path: string, basePath = ''): AsyncIterable<string> {
		const items = await readdir(path, { withFileTypes: true })
		for (const item of items) {
			const relativePath = join(basePath, item.name)
			if (options?.filter?.(relativePath) === false) continue
			if (item.isDirectory()) {
				yield* traverse(join(path, item.name), relativePath)
			} else if (item.isFile()) {
				yield relativePath
			}
		}
	}

	yield* traverse(path)
}

async function compressFolder(inputPath: string, outputFile: string) {
	const zipData: AsyncZippable = {}

	function filter(path: string): boolean {
		if (path === 'data' || path.startsWith('data/')) return true
		if (path === 'pack.mcmeta') return true
		return false
	}

	for await (const filePath of traverseDirectory(inputPath, { filter })) {
		const realPath = join(inputPath, filePath)
		const data = await Bun.file(realPath).bytes()
		zipData[filePath] = data
	}

	const zipped = await zip(zipData, { level: 9 })
	await Bun.write(outputFile, zipped)
}

async function cleanupLastBuild() {
	await rm(TEMP_PATH, { recursive: true, force: true })
}

async function buildDatapack(name: string) {
	const buildPath = join(TEMP_PATH, name)
	await mkdir(buildPath, { recursive: true })

	await cp(join(DATAPACKS_PATH, name), buildPath, {
		recursive: true,
		filter(source, destination) {
			const path = relative(buildPath, destination)

			if (path === '.mcb') return false
			if (path === 'data') return false

			return true
		},
	})

	const mcb = Bun.spawn(['mcb', 'build', '--prod'], {
		cwd: buildPath,
		stderr: 'pipe',
		stdout: 'pipe',
	})
	await mcb.exited

	// @ts-expect-error - Bun's type definitions are missing .text() on ReadableStreams.
	const errorText: string = await mcb.stderr.text()
	if (errorText.length > 0) {
		console.error(`MC-Build failed to build ${name}:\n` + errorText)
		process.exit(1)
	}

	// @ts-expect-error - Bun's type definitions are missing .text() on ReadableStreams.
	const outputText = await mcb.stdout.text()
	console.log(outputText)

	const zipPath = join(OUTPUT_PATH, `${name}.zip`)
	await rm(zipPath, { force: true })
	await compressFolder(buildPath, zipPath)
}

async function main() {
	await cleanupLastBuild()
	await buildDatapack('Astar')
}

void main()
