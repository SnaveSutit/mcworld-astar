// ------------------------------------------------------------
// Automatically configures and initializes this world template
// ------------------------------------------------------------

import * as fs from 'fs/promises'
import { existsSync } from 'fs'
import * as pathjs from 'path'
import { terminal as term } from 'terminal-kit'

function resolveEnvVariables(str: string): string {
	return str.replace(
		/%([^%]+)%|\$([A-Z_]+[A-Z0-9_]*)|\${([A-Z0-9_]*)}/gi,
		(_, a, b) => process.env[a || b] as string
	)
}

const MINECRAFT_PATH = resolveEnvVariables('%APPDATA%/.minecraft/')
const CURSEFORGE_INSTANCES_PATH = resolveEnvVariables('%APPDATA%/.curseforge/Instances')
const GDLAUNCHER_INSTANCES_PATH = resolveEnvVariables('%APPDATA%/.gdlauncher/instances')
const PACKAGEJSON_PATH = pathjs.join(process.cwd(), 'package.json')
const LEVEL_DAT_PATH = pathjs.join(process.cwd(), 'world/level.dat')

interface MinecraftProfile {
	name: string
	path: string
}

async function createFolders() {
	await fs.mkdir(pathjs.join(process.cwd(), 'datapacks'), { recursive: true })
	await fs.mkdir(pathjs.join(process.cwd(), 'resources/assets/minecraft'), { recursive: true })
}

async function gatherMinecraftInstances() {
	const vanilla = Object.values(
		JSON.parse(
			await fs.readFile(pathjs.join(MINECRAFT_PATH, 'launcher_profiles.json'), {
				encoding: 'utf-8',
			})
		).profiles
	).map((p: any) => {
		return {
			name: p.name,
			path: p.gameDir || MINECRAFT_PATH,
		} as MinecraftProfile
	})
	const curseforge: MinecraftProfile[] = []
	for (const file of await fs.readdir(CURSEFORGE_INSTANCES_PATH)) {
		const path = pathjs.join(CURSEFORGE_INSTANCES_PATH, file)
		const json = await JSON.parse(
			await fs.readFile(pathjs.join(path, 'minecraftinstance.json'), { encoding: 'utf-8' })
		)
		curseforge.push({
			name: json.name,
			path,
		})
	}
	const gdlauncher: MinecraftProfile[] = []
	for (const file of await fs.readdir(GDLAUNCHER_INSTANCES_PATH)) {
		const path = pathjs.join(GDLAUNCHER_INSTANCES_PATH, file)
		// const json = await JSON.parse(await fs.readFile(pathjs.join(path, 'config.json')))
		gdlauncher.push({
			name: file,
			path,
		})
	}
	return { vanilla, curseforge, gdlauncher }
}

async function main() {
	let projectId = ''
	let projectName = ''
	while (projectId === '') {
		term.eraseLine().column(0)('Project ID: ')
		projectId = await term.inputField({}).promise
	}
	term('\n')
	while (projectName === '') {
		term.eraseLine().column(0)('Project Display Name: ')
		projectName = await term.inputField({}).promise
	}

	const profiles = await gatherMinecraftInstances()
	term.green('\nSelect a launcher, and profile to inject your project into.')
	const launcher = (await term.singleColumnMenu(Object.keys(profiles)).promise).selectedText
	const profileIndex = (await term.gridMenu(profiles[launcher].map((v: any) => v.name)).promise)
		.selectedIndex
	const selectedProfile: MinecraftProfile = profiles[launcher][profileIndex]

	const saveLocation = pathjs.join(selectedProfile.path, 'saves/', projectName)
	if (existsSync(saveLocation)) {
		term('\n')
			.brightRed(
				`A world named '${projectName}' already exists in the '${selectedProfile.name}' profile!`
			)
			.brightRed('\nYou will need to either remove the existing file, or rename the project.')
	}
	const dataPacksLocation = pathjs.join('./world/datapacks/')
	const resourcesLocation = pathjs.join(selectedProfile.path, 'resourcepacks/', projectName)
	if (existsSync(resourcesLocation)) {
		term('\n')
			.brightRed(
				`A Resource Pack named '${projectName}' already exists in the '${selectedProfile.name}' profile!`
			)
			.brightRed('\nYou will need to either remove the existing file, or rename the project.')
	}
	term('\n')

	term('\n')
		.brightGreen(`World: ${saveLocation}`)
		.brightGreen(`\nResource Packs: ${saveLocation}`)
		.brightRed('\nDouble check the above paths are correct before confirming!')
		.yellow(
			`\nInject project symlinks shown above into ${launcher} profile '${selectedProfile.name}'? [Y|n]`
		)('\n')
	const confirm = await term.yesOrNo({ yes: ['y'], no: ['n'] }).promise
	if (!confirm) {
		term.bgRed('Setup cancelled.')('\n')
		process.exit()
	}
	term.brightGreen('Setting up project...')('\n')

	await createFolders()

	await fs
		.symlink(pathjs.join(process.cwd(), './datapacks'), dataPacksLocation, 'dir')
		.catch(e => {})
	await fs.symlink(pathjs.join(process.cwd(), './world'), saveLocation, 'dir').catch(e => {})
	await fs
		.symlink(pathjs.join(process.cwd(), './resources'), resourcesLocation, 'dir')
		.catch(e => {})

	const packageJson = JSON.parse(await fs.readFile(PACKAGEJSON_PATH, 'utf-8'))
	packageJson.projectId = projectId
	packageJson.projectName = projectName
	await fs.writeFile(PACKAGEJSON_PATH, JSON.stringify(packageJson, null, '\t'))

	const metapaths = [pathjs.join(process.cwd(), './resources/pack.mcmeta')]
	for (const metapath of metapaths) {
		const mcmetaJson = JSON.parse(await fs.readFile(metapath, 'utf-8'))
		mcmetaJson.pack.description = `${projectName} (${projectId})`
		await fs.writeFile(metapath, JSON.stringify(mcmetaJson, null, '\t'))
	}

	term.bgBrightGreen('Project setup complete!')('\n')
	process.exit()
}

main()
