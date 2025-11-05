module.exports = {
	dev: true,
	header: '#built using mc-build (https://github.com/mc-build/mc-build)',
	internalScoreboardName: 'astar.v',
	sign(num) {
		return num >= 0 ? `+${num}` : `${num}`
	},
}
