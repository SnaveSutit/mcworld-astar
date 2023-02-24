import log.mcm
import rng.mcm

function load {
	scoreboard objectives add ex.v dummy
	scoreboard objectives add ex.state dummy
	log SETNAME {"text":"Ex","color":"red"}

	scoreboard players set .IDLE ex.state 0
	scoreboard players set .WAITING_FOR_PATH ex.state 1
	scoreboard players set .FOLLOWING_PATH ex.state 2
	scoreboard players set .STARTING_WALK_CYCLE ex.state 3
	scoreboard players set .ENDING_WALK_CYCLE ex.state 4
	scoreboard players set .WAITING_FOR_ANIM ex.state 5
}

function summon {
	execute align xyz positioned ~0.5 ~ ~0.5 run {
		function player:summon/steve
		execute as @e[type=marker,tag=aj.player.root,distance=..0.1] if score @s aj.id = .aj.last_id aj.i run {
			scoreboard players operation @s ex.state = .IDLE ex.state
			function player:animations/idle/play
			# rng range 0 8 # ex.v
			execute if score # ex.v matches 0 run function player:set_variant/fetchbot
			execute if score # ex.v matches 1 run function player:set_variant/snavesutit
			execute if score # ex.v matches 2 run function player:set_variant/alex
			execute if score # ex.v matches 3 run function player:set_variant/steve
			execute if score # ex.v matches 4 run function player:set_variant/nerdrope
			execute if score # ex.v matches 5 run function player:set_variant/verylyfeless
			execute if score # ex.v matches 6 run function player:set_variant/violet
			execute if score # ex.v matches 7 run function player:set_variant/stuarta
			execute if score # ex.v matches 8 run function player:set_variant/cheesierpasta
		}
	}
}

function summon_all {
	LOOP(9,i) {
		scoreboard players set # ex.v <%i%>
		execute positioned ~ ~ ~<%i%> run function example:summon
	}
}

function give_target {
	give @s minecraft:glow_item_frame{EntityTag:{Fixed:1b,Invisible:1b,Item:{id:"minecraft:red_concrete",Count:1b,tag:{display:{Name:'{"text":"Target","color":"red","italic":false}'}}},CustomName:'{"text":"Target","color":"red"}',CustomNameVisible:1b,Tags:["ex.target"]},display:{Name:'{"text":"Target","color":"red","italic":false}'}}
}

function on_path_found {
	execute if entity @s[tag=aj.player.root] run {
		data modify entity @s data.path set from storage astar:ram this.path
		data remove entity @s data.path.nodes[0]
		# log info data entity @s data

		scoreboard players operation .this aj.id = @s aj.id
		function example:next_node
		function player:animations/idle/pause
		function player:animations/start_walk/play
		scoreboard players operation @s ex.state = .STARTING_WALK_CYCLE ex.state
	}
}

function next_node {
	# log info text next_node

	# If there are no more nodes, return to IDLE state
	execute store result score #count ex.v run data get entity @s data.path.nodes
	execute (if score #count ex.v matches 0) {
		scoreboard players operation @s ex.state = .ENDING_WALK_CYCLE ex.state
		function player:animations/walk/pause
		function player:animations/end_walk/play
	} else {
		summon marker ~ ~ ~ {Tags:['ex.node','new']}
		data remove storage example:ram node
		data modify storage example:ram node set from entity @s data.path.nodes[0]
		data remove entity @s data.path.nodes[0]

		execute as @e[type=marker,tag=ex.node,tag=new,distance=..1] run {
			scoreboard players operation @s aj.id = .this aj.id
			data modify entity @s Pos set from storage example:ram node
			execute at @s align xyz positioned ~.5 ~ ~.5 run tp @s ~ ~ ~
			tag @s remove new
		}
	}
	tp @s ~ ~ ~ ~1 ~
}

function tick {
	execute as @e[type=marker,tag=aj.player.root] at @s run {
		# particle crit ^ ^1 ^1
		execute as @a[tag=follow] at @e[type=minecraft:marker,tag=aj.player.root] run tp @s ^ ^4 ^-5 ~ ~45

		execute if score @s ex.state = .IDLE ex.state if entity @e[type=marker,tag=maze.target] run {
			data modify storage astar:ram new.path.start set from entity @s Pos
			execute as @e[type=marker,tag=maze.target,limit=1,sort=random] run {
				data modify storage astar:ram new.path.end set from entity @s Pos
				# kill @s
			}
			function astar:queue_path
			scoreboard players operation @s ex.state = .WAITING_FOR_PATH ex.state
		}

		execute if score @s ex.state = .FOLLOWING_PATH ex.state run {
			scoreboard players operation .this aj.id = @s aj.id
			execute as @e[type=marker,tag=ex.node] if score @s aj.id = .this aj.id run {
				tag @s add this.node
			}
			execute at @s anchored eyes facing entity @e[type=marker,tag=this.node] feet positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^1 facing entity @s eyes facing ^ ^ ^-1 positioned as @s rotated ~ 0 run tp @s ~ ~ ~ ~ ~
			execute at @s run tp @s ^ ^ ^0.1

			tag @s add this.player
			execute as @e[type=marker,tag=this.node,distance=..0.5] run {
				kill @s
				execute as @e[type=marker,tag=this.player,distance=..0.5] at @s run function example:next_node
			}
			tag @e[type=marker,tag=ex.node] remove this.node
			tag @s remove this.player
		}

		execute if score @s ex.state = .ENDING_WALK_CYCLE ex.state run {
			tp @s ^ ^ ^0.07
		}
	}

	# execute at @e[type=marker,tag=ex.node] run particle dust 0 1 0 0.5 ~ ~.1 ~ 0 -10 0 10 0 force @a
}
