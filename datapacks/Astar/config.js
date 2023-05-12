/// <reference types="node"/>
// ---------------------------------------------------------------------
// This template script adds a few useful arguments to the mcbuild cli:
// -clean: Errases the data folder before building.
// ---------------------------------------------------------------------
const fs = require('fs')

module.exports = {
	global: {
		preBuild: build => {
			if (process.argv.includes('-clean')) {
				try {
					fs.rmSync('./data/', { recursive: true })
				} catch (e) {}
				fs.mkdirSync('./data/')
			}
		},
		postBuild: build => {},
	},
	mc: {
		dev: false,
		header: '#built using mc-build (https://github.com/mc-build/mc-build)',
		internalScoreboard: 'aS.i',
		generatedDirectory: 'zzz',
		rootNamespace: null,
		astar: {
			developer_mode: false,
			options: {
				allow_straight_movement: true,
				allow_diagonal_movement: true,
				allow_three_dimensional_pathing: false,
			},
			debug: {
				verbose: false,
				particles: false,
				functions: false,
				path_statistics: false,
				title_status: false,
				display_previous_path: false,
			},
			internal: {
				error: {
					max_closed_reached: {
						text: 'Maximum closed nodes reached',
						color: 'red',
					},
					no_open_nodes: {
						text: 'No more open nodes (Path unsolveable)',
						color: 'red',
					},
					h_cost_not_found: {
						text: 'Could not find node with min H cost under F cost. This should never happen.',
						color: 'red',
					},
					path_failed: {
						text: 'Path failed.',
						color: 'red',
					},
				},
			},
		},
	},
	'mc-extra': {
		integrated: true,
	},
	'mc-math': {},
}
