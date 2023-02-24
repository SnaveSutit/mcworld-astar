import * as pathjs from 'path'
import * as fs from 'fs/promises'
import { statSync } from 'fs'
import { terminal as term } from 'terminal-kit'
import { IPackage } from './types'

const packageScript = 'cd "$PATH" && mcb -w-alt -debounce-time 100'
const DATAPACKS_PATH = './datapacks/'
const PACKAGE_PATH = './package.json'

async function main() {
	const content: IPackage = await fs
		.readFile(PACKAGE_PATH, { encoding: 'utf-8' })
		.then(p => JSON.parse(p))
	const datapacks = (await fs.readdir(DATAPACKS_PATH)).filter(p => {
		const path = pathjs.join(DATAPACKS_PATH, p)
		if (statSync(path).isDirectory() && statSync(pathjs.join(path, 'pack.mcmeta'))) return true
	})
	const unknownDatapacks = Object.values(datapacks).filter(
		d => !Object.values(content.datapacks).find(d2 => d2 === d)
	)

	if (unknownDatapacks.length === 0) {
		term('\n')
		term('All datapacks are already added to the package.json file.\n')
		process.exit()
	}

	if (!content.datapacks) content.datapacks = {}

	for (const datapackName of unknownDatapacks) {
		const datapackId = datapackName.replace(/ /g, '-').toLowerCase()
		const script = packageScript.replace('$PATH', pathjs.join(DATAPACKS_PATH, datapackName))
		content.scripts[`dev:${datapackId}`] = script
		content.datapacks[datapackId] = datapackName
		term('\n')
		term(`Datapack ${datapackName} (${datapackId}) added successfully!\n`)
		term('You can now run ').yellow('yarn dev:' + datapackId)(' to start developing.\n')
	}

	await fs.writeFile(PACKAGE_PATH, JSON.stringify(content, null, '\t'))

	process.exit()
}

main()
