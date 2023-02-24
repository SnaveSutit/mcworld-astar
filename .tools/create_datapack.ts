import * as pathjs from 'path'
import * as fs from 'fs/promises'
import { terminal as term } from 'terminal-kit'
import { IPackage } from './types'

const packageScript = 'cd "$PATH" && mcb -w-alt -debounce-time 100'
const DATAPACKS_PATH = './datapacks/'
const DATAPACK_TEMPLATE_PATH = './.tools/datapack_template/'
const PACKAGE_PATH = './package.json'

async function getResponse(prompt: string): Promise<string> {
	let response = ''
	term('\n')
	while (response === '') {
		term.eraseLine().column(0)(prompt)
		response = await term.inputField({}).promise
	}
	return response
}

async function modifyPackage(datapackId: string, datapackName: string) {
	const content: IPackage = await fs
		.readFile(PACKAGE_PATH, { encoding: 'utf-8' })
		.then(p => JSON.parse(p))
	const script = packageScript.replace('$PATH', pathjs.join(DATAPACKS_PATH, datapackName))
	content.scripts[`dev:${datapackId}`] = script
	if (!content.datapacks) content.datapacks = {}
	content.datapacks[datapackId] = datapackName
	await fs.writeFile(PACKAGE_PATH, JSON.stringify(content, null, '\t'))
}

async function modifyMcMeta(datapackName: string, datapackDescription: string) {
	const mcMetaPath = pathjs.join(DATAPACKS_PATH, datapackName, 'pack.mcmeta')
	const content = await fs.readFile(mcMetaPath, { encoding: 'utf-8' }).then(p => JSON.parse(p))
	content.pack.description = datapackDescription
	await fs.writeFile(mcMetaPath, JSON.stringify(content, null, '\t'))
}

async function main() {
	const datapackId = await getResponse('Datapack ID (eg. "project-name"): ')
	const datapackName = await getResponse('Datapack Name (eg. "Project Name"): ')
	const datapackDescription = await getResponse('Datapack Description (eg. "A cool datapack"): ')

	await fs.cp(DATAPACK_TEMPLATE_PATH, pathjs.join(DATAPACKS_PATH, datapackName), {
		recursive: true,
	})

	await modifyPackage(datapackId, datapackName)
	await modifyMcMeta(datapackName, datapackDescription)

	term('\n')
	term(`Datapack ${datapackName} (${datapackId}) created successfully!\n`)
	term('You can now run ').yellow('yarn dev:' + datapackId)(' to start developing.\n')
	process.exit()
}

main()
