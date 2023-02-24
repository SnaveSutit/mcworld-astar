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
		dev: true,
		header: '# Developed by SnaveSutit (Discord: SnaveSutit#0042 | Email: SnaveSutit@gmail.com)\n# built using mc-build (https://github.com/mc-build/mc-build)',
		internalScoreboard: 'i',
		generatedDirectory: 'zzz',
		rootNamespace: null,
	},
}
