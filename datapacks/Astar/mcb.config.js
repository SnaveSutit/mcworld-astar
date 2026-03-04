const { readFileSync } = require('fs')
const { default: chalk } = require('chalk')

const env = process.argv.includes('--prod') ? 'prod' : 'dev'
const HOT_CONFIG_PATH = `./config.${env}.json`

let hotConfig

const logPrefx = chalk.gray('[') + chalk.green('A*') + chalk.gray(']')

function updateHotConfig() {
	console.log(logPrefx, 'Using hot config from', chalk.cyan(HOT_CONFIG_PATH))
	try {
		const configText = readFileSync(HOT_CONFIG_PATH, 'utf-8')
		hotConfig = JSON.parse(configText)
	} catch (err) {
		console.error(logPrefx, `Failed to read hot config from ${HOT_CONFIG_PATH}: ${err.message}`)
		process.exit(1)
	}
}

const CONFIG = new Proxy(
	{
		header: '#built using mc-build (https://github.com/mc-build/mc-build)',
		internalScoreboardName: 'astar.v',
		dontEmitComments: env === 'prod',
		sign(num) {
			return num >= 0 ? `+${num}` : `${num}`
		},
		setup(mcb) {
			mcb.events.onPreBuild.subscribe(build => {
				console.log(logPrefx, `Building in`, chalk.red(env), 'mode')
				updateHotConfig()
			})
		},
	},
	{
		get(target, prop) {
			if (prop in target) {
				return target[prop]
			}
			if (hotConfig && prop in hotConfig) {
				return hotConfig[prop]
			}
		},
	}
)

module.exports = CONFIG
