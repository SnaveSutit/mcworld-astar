// --------------------------------------------------------------
// Automatically packages the world, datapacks, and resourcepacks
// --------------------------------------------------------------

import * as pathjs from 'path'
import * as fs from 'fs/promises'
import { execSync } from 'child_process'
import { terminal as term } from 'terminal-kit'

function _7z(zip_name: string, target: string) {
	execSync(
		`$7zipPath = "$env:programFiles/7-Zip/7z.exe"; if (-not (Test-Path -Path $7zipPath -PathType Leaf)) { throw "7 zip file '$7zipPath' not found" }; Set-Alias 7z $7zipPath; 7z a "${zip_name}" "${target}"`,
		{ shell: 'powershell.exe' }
	)
}

async function cleanupDirTree(base: string, ext: string) {
	const items = await fs.readdir(base)
	for (const item of items) {
		const itemPath = pathjs.resolve(base, item)
		const stat = await fs.stat(itemPath)
		if (stat.isDirectory()) {
			await cleanupDirTree(itemPath, ext)
			if ((await fs.readdir(itemPath)).length === 0) {
				await fs.rmdir(itemPath)
			}
		} else if (stat.isFile() && item.endsWith(ext)) {
			await fs.unlink(itemPath)
		}
	}
}

async function main() {
	term.green('Packaging project...\n')

	const packageJson = JSON.parse(await fs.readFile('./package.json', 'utf-8'))
	// Erase contents of dist folder
	await fs.rm('./dist/', { recursive: true }).catch(e => {})
	await fs.mkdir('./dist')
	// Erase contents of .temp folder
	await fs.rm('./.temp/', { recursive: true }).catch(e => {})
	await fs.mkdir('./.temp/', { recursive: true }).catch(e => {})
	// Copy world, resource pack, and data pack into the .temp folder to prevent accidentally breaking things
	await fs.cp('./world/', `./.temp/${packageJson.projectName} World/`, { recursive: true })
	await fs.cp('./resources/', './.temp/resources/', { recursive: true })
	await fs.cp('./datapacks/', './.temp/datapacks/', { recursive: true })
	// Remove datapacks link from copied world
	await fs.unlink(`./.temp/${packageJson.projectName} World/datapacks`).catch(e => {})
	// Perform a clean build of the data packs
	await fs.mkdir('./dist/datapacks/', { recursive: true }).catch(e => {})
	for (const dir of await fs.readdir('./.temp/datapacks/')) {
		const path = pathjs.join(process.cwd(), '.temp/datapacks/', dir)
		if (await fs.stat(path).then(s => s.isFile())) continue
		// Make sure this is an MCB project
		if (
			await fs
				.access(pathjs.join(path, 'src/'))
				.then(() => true)
				.catch(() => false)
		) {
			execSync(`cd "${path}"; mcb -offline -build -clean`, { shell: 'powershell.exe' })
			// Remove MC-Build project files
			for (const item of ['src/', '.mcproject', 'config.js', 'config.json']) {
				await fs.rm(pathjs.join(path, item), { recursive: true }).catch(e => {})
			}
		}
		await cleanupDirTree(path, '.ajmodel')
		// Export compressed datapack to ./dist/datapacks/
		_7z(`./dist/datapacks/${dir}.zip`, pathjs.join(path, '*'))
	}
	// Clean up resource pack
	await cleanupDirTree('./.temp/resources/', '.ajmodel')
	// Zip the resource pack and put it in dist
	_7z(`./dist/${packageJson.projectName} Resource Pack.zip`, './.temp/resources/*')

	// Copy the compiled and zipped data packs into the world
	await fs.cp('./dist/datapacks/', `./.temp/${packageJson.projectName} World/datapacks/`, {
		recursive: true,
	})
	// Copy the zipped resource pack into the world
	await fs.cp(
		`./dist/${packageJson.projectName} Resource Pack.zip`,
		`./.temp/${packageJson.projectName} World/resources.zip`
	)
	// Clean up the world
	for (const item of [
		'advancements',
		'playerdata',
		'poi',
		'stats',
		'level.dat_old',
		'session.lock',
	]) {
		await fs
			.rm(pathjs.join(`./.temp/${packageJson.projectName} World/`, item), { recursive: true })
			.catch(e => {})
	}
	await cleanupDirTree(`./.temp/${packageJson.projectName} World/`, '.ajmodel')
	// Zip the world
	_7z(`./dist/${packageJson.projectName}.zip`, `./.temp/${packageJson.projectName} World/`)
	// Remove .temp folder
	await fs.rm('./.temp/', { recursive: true }).catch(e => {})

	term.green('Done!\n')
	process.exit(0)
}

main()
