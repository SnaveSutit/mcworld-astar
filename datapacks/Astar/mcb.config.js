const { readFileSync } = require('fs')

let hotConfig

const CONFIG = new Proxy(
	{
		header: '#built using mc-build (https://github.com/mc-build/mc-build)',
		internalScoreboardName: 'astar.v',
		sign(num) {
			return num >= 0 ? `+${num}` : `${num}`
		},
		setup(mcb) {
			mcb.events.onPreBuild.subscribe(() => {
				hotConfig = JSON.parse(readFileSync('./hot.config.json', 'utf-8'))
				Object.assign(mcb, hotConfig)
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
