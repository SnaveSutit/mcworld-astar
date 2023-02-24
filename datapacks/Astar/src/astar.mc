import ./log.mcm

!IF(config.astar.debug.functions) {
	dir debug {
		dir queue_path {
			function single {
				data modify storage astar:ram new.path.start set from entity @e[type=glow_item_frame,limit=1,sort=random,tag=aS.debug.start] Pos
				data modify storage astar:ram new.path.end set from entity @e[type=glow_item_frame,limit=1,sort=random,tag=aS.debug.end] Pos
				data modify storage astar:ram new.path.max_closed_nodes set value 100
				function astar:queue_path
			}

			function can_return_intermediate {
				data modify storage astar:ram new.path.start set from entity @e[type=glow_item_frame,limit=1,sort=random,tag=aS.debug.start] Pos
				data modify storage astar:ram new.path.end set from entity @e[type=glow_item_frame,limit=1,sort=random,tag=aS.debug.end] Pos
				data modify storage astar:ram new.path.can_return_intermediate set value 1b
				data modify storage astar:ram new.path.max_closed_nodes set value 100
				function astar:queue_path
			}
		}

		function items {
			give @s minecraft:glow_item_frame{EntityTag:{Fixed:1b,Invisible:1b,Item:{id:"minecraft:lime_concrete",Count:1b,tag:{display:{Name:'{"text":"Start","color":"green","italic":false}'}}},CustomName:'{"text":"Start","color":"green"}',CustomNameVisible:1b,Tags:["aS.debug.start"]},display:{Name:'{"text":"Start","color":"green","italic":false}'}}
			give @s minecraft:glow_item_frame{EntityTag:{Fixed:1b,Invisible:1b,Item:{id:"minecraft:red_concrete",Count:1b,tag:{display:{Name:'{"text":"End","color":"red","italic":false}'}}},CustomName:'{"text":"End","color":"red"}',CustomNameVisible:1b,Tags:["aS.debug.end"]},display:{Name:'{"text":"End","color":"red","italic":false}'}}
		}

		function clear_path_queue {
			data modify storage astar:ram path_queue set value []
		}

		function reset_scores {
			scoreboard players set #aS.last_path_id aS.v 0
			scoreboard players set #aS.path.id aS.v 0
			scoreboard players set #aS.state aS.v 0
		}

		function reset {
			function astar:debug/reset_scores
			function astar:debug/clear_path_queue
			kill @e[type=marker,tag=aS.node]
			kill @e[type=marker,tag=aS.path]
		}

		function show_node_info {
			execute as @e[type=marker,tag=aS.node,limit=1,sort=nearest] at @s run {
				scoreboard players operation #g aS.v = @s aS.node.g
				scoreboard players operation #h aS.v = @s aS.node.h
				scoreboard players operation #f aS.v = @s aS.node.f
				scoreboard players operation #id aS.v = @s aS.node.id
				scoreboard players operation #p aS.v = @s aS.node.p

				scoreboard players operation #x aS.v = @s aS.node.x
				scoreboard players operation #y aS.v = @s aS.node.y
				scoreboard players operation #z aS.v = @s aS.node.z

				particle dust 1 0 0 1 ~ ~.6 ~ 0 -10 0 10 0 force @a
			}
			(
				title @s actionbar
				["",
					{"text":"G: ","color":"dark_aqua"},
					{"score":{"name":"#g","objective":"aS.v"},"color":"aqua"},

					{"text":" | ","color":"gray"},
					{"text":"H: ","color":"dark_purple"},
					{"score":{"name":"#h","objective":"aS.v"},"color":"light_purple"},

					{"text":" | ","color":"gray"},
					{"text":"F: ","color":"gold"},
					{"score":{"name":"#f","objective":"aS.v"},"color":"yellow"},

					{"text":" | ","color":"gray"},
					{"text":"ID: ","color":"blue"},
					{"score":{"name":"#id","objective":"aS.v"},"color":"dark_aqua"},

					{"text":" | ","color":"gray"},
					{"text":"P: ","color":"dark_red"},
					{"score":{"name":"#p","objective":"aS.v"},"color":"red"},

					{"text":" | ","color":"gray"},
					{"text":"POS: ","color":"gold"},
					{"text":"x:","color":"gray"},
					{"score":{"name":"#x","objective":"aS.v"},"color":"red"},
					{"text":" y:","color":"gray"},
					{"score":{"name":"#y","objective":"aS.v"},"color":"green"},
					{"text":" z:","color":"gray"},
					{"score":{"name":"#z","objective":"aS.v"},"color":"blue"}
				]
			)
		}
	}
}

functions on_path_found {
	astar:internal/on_path_found
}

blocks can_path_on {
	minecraft:glass
	minecraft:red_concrete
	minecraft:lime_concrete
	minecraft:gray_concrete
}

blocks can_path_through {
	minecraft:air
	minecraft:cave_air
	minecraft:void_air
}

blocks weighted2x {
	minecraft:lime_concrete
}
blocks weighted4x {
	minecraft:red_concrete
}
blocks weighted8x {
}
blocks weighted16x {
}

predicate select_lowest_f_cost {
	"condition": "minecraft:value_check",
	"value": {
		"type": "minecraft:score",
		"target": "this",
		"score": "aS.node.f"
	},
	"range": {
		"min": 0,
		"max": {
			"type": "minecraft:score",
			"target": {
				"type": "minecraft:fixed",
				"name": "#aS.min_f"
			},
			"score": "aS.v"
		}
	}
}

predicate select_lowest_h_cost {
	"condition": "minecraft:value_check",
	"value": {
		"type": "minecraft:score",
		"target": "this",
		"score": "aS.node.h"
	},
	"range": {
		"min": 0,
		"max": {
			"type": "minecraft:score",
			"target": {
				"type": "minecraft:fixed",
				"name": "#aS.min_h"
			},
			"score": "aS.v"
		}
	}
}

function queue_path {
	# Add 1 to the last path ID and store that result in this entity's aS.v and astar:ram new.path.id
	execute store result score @s aS.v store result storage astar:ram new.path.id int 1 run scoreboard players add #aS.last_path_id aS.v 1
	# Add this new path to the path_queue
	data modify storage astar:ram path_queue append from storage astar:ram new.path
	# Tag this entity as waiting for solve
	tag @s add aS.waiting_for_solve
	!IF(config.astar.developer_mode){
		log info text Queued new path:
		log info data storage astar:ram new.path
	}
	# Clear the new.path object
	data modify storage astar:ram new.path set value {start:[],end:[]}
}

dir internal {

	function load {
		log SETNAME {"text":"A*","color":"green"}
		scoreboard objectives add <%config.internalScoreboard%> dummy [{"text":"A* Internal","color":"green"}]
		scoreboard objectives add aS.v dummy [{"text":"A* Value","color":"green"}]

		scoreboard objectives add aS.node.id dummy [{"text":"A* ","color":"green"},{"text":"node.","color":"gray"},{"text":"id","color":"dark_blue"}]
		scoreboard objectives add aS.node.pid dummy [{"text":"A* ","color":"green"},{"text":"node.path.","color":"gray"},{"text":"id","color":"yellow"}]

		scoreboard objectives add aS.node.h dummy [{"text":"A* ","color":"green"},{"text":"node.","color":"gray"},{"text":"h","color":"dark_purple"}]
		scoreboard objectives add aS.node.g dummy [{"text":"A* ","color":"green"},{"text":"node.","color":"gray"},{"text":"g","color":"dark_aqua"}]
		scoreboard objectives add aS.node.f dummy [{"text":"A* ","color":"green"},{"text":"node.","color":"gray"},{"text":"f","color":"gold"}]
		scoreboard objectives add aS.node.p dummy [{"text":"A* ","color":"green"},{"text":"node.","color":"gray"},{"text":"parent","color":"light_purple"}]

		scoreboard objectives add aS.node.x dummy [{"text":"A* ","color":"green"},{"text":"node.pos.","color":"gray"},{"text":"x","color":"red"}]
		scoreboard objectives add aS.node.y dummy [{"text":"A* ","color":"green"},{"text":"node.pos.","color":"gray"},{"text":"y","color":"green"}]
		scoreboard objectives add aS.node.z dummy [{"text":"A* ","color":"green"},{"text":"node.pos.","color":"gray"},{"text":"z","color":"blue"}]

		scoreboard players set $astar.straight_movement_cost aS.v 10
		scoreboard players set $astar.diagonal_movement_cost aS.v 14
		scoreboard players set $astar.vertical_movement_cost aS.v 10
		scoreboard players set $astar.max_closed_nodes aS.v 1000
		scoreboard players set $astar.default_max_closed_nodes aS.v 1000
		scoreboard players set $astar.max_ms_per_tick aS.v 20

		scoreboard players add #aS.state aS.v 0

		scoreboard players set #-1 aS.v -1
		scoreboard players set #2 aS.v 2
		scoreboard players set #4 aS.v 4
		scoreboard players set #8 aS.v 8
		scoreboard players set #16 aS.v 16
		scoreboard players set #32 aS.v 32
		scoreboard players set #64 aS.v 64
		scoreboard players set #wb_sub aS.v 59999968

		!IF(config.astar.developer_mode){
			log info text Reloaded!
		}
	}

	function cleanup_path {
		# Kill all nodes unless display_previous_path is enabled, then only kill non path nodes
		!IF(!config.astar.debug.display_previous_path){
			kill @e[type=marker,tag=aS.node]
		}
		!IF(config.astar.debug.display_previous_path){
			kill @e[type=marker,tag=aS.node,tag=!aS.path]
		}
	}

	function on_path_found {
		!IF(config.astar.debug.verbose) {
			log function text Solve completed
			log info data storage astar:ram this.path
		}
		tag @s remove aS.waiting_for_solve
		scoreboard players set @s aS.v -1
	}

	clock 1t {
		name tick
		# Count the number of paths in the queue
		execute store result score #count aS.v run data get storage astar:ram path_queue
		# If we are not already calculating a path, start calculating the next one.
		execute if score #aS.state aS.v matches 0 if score #count aS.v matches 1.. run function astar:internal/search/start
	}

	dir async {
		function get_worldborder {
			# Get the current worldborder size
			execute store result score #aS.ms aS.v run worldborder get
			# Subtract the max worldborder size
			scoreboard players operation #aS.ms aS.v -= #wb_sub aS.v
			# abs()
			execute if score #aS.ms aS.v matches ..-1 run scoreboard players operation #aS.ms aS.v *= #-1 aS.v
		}
	}

	dir node {
		function create {
			summon marker ~ ~ ~ {Tags:['aS.node']}
			# Path Statistics
			!IF(config.astar.debug.path_statistics){
				scoreboard players add #aS.opened_nodes aS.v 1
			}
			execute as @e[type=marker,tag=aS.node,distance=..0.1,limit=1] at @s run function astar:internal/node/calculate
		}

		function calculate {
			# Node ID
			execute store result score @s aS.node.id run scoreboard players add #aS.last_node_id aS.v 1
			# Path ID
			scoreboard players operation @s aS.node.pid = #aS.path.id aS.v
			# Parent ID
			scoreboard players operation @s aS.node.p = #aS.parent.id aS.v
			# Set xyz
			# Since reading/writing storage is ~4x faster than the same operations on an entity's data we store the pos into storage before storing it into scores
			data modify storage astar:ram this.pos set from entity @s Pos
			execute store result score @s aS.node.x run data get storage astar:ram this.pos[0]
			execute store result score @s aS.node.y run data get storage astar:ram this.pos[1]
			execute store result score @s aS.node.z run data get storage astar:ram this.pos[2]

			#> Calculate Heuristic
			# Set temp xyz
			scoreboard players operation #x aS.v = @s aS.node.x
			scoreboard players operation #y aS.v = @s aS.node.y
			scoreboard players operation #z aS.v = @s aS.node.z

			# Diff
			scoreboard players operation #x aS.v -= #aS.path.end.x aS.v
			scoreboard players operation #y aS.v -= #aS.path.end.y aS.v
			scoreboard players operation #z aS.v -= #aS.path.end.z aS.v

			# Absolute Value
			execute if score #x aS.v matches ..-1 run scoreboard players operation #x aS.v *= #-1 aS.v
			execute if score #y aS.v matches ..-1 run scoreboard players operation #y aS.v *= #-1 aS.v
			execute if score #z aS.v matches ..-1 run scoreboard players operation #z aS.v *= #-1 aS.v

			# Get smallist axis
			scoreboard players set #dmin aS.v 2147483647
			scoreboard players operation #dmin aS.v < #x aS.v
			scoreboard players operation #dmin aS.v < #y aS.v
			scoreboard players operation #dmin aS.v < #z aS.v

			# Get largest axis
			scoreboard players set #dmax aS.v 0
			scoreboard players operation #dmax aS.v > #x aS.v
			scoreboard players operation #dmax aS.v > #y aS.v
			scoreboard players operation #dmax aS.v > #z aS.v

			# Get mid difference
			# dmid = dx + dy + dz - dmin - dmax
			# dx + dy + dz
			scoreboard players operation #dmid aS.v = #x aS.v
			scoreboard players operation #dmid aS.v += #y aS.v
			scoreboard players operation #dmid aS.v += #z aS.v
			# dmin - dmax
			scoreboard players operation #dmid aS.v -= #dmin aS.v
			scoreboard players operation #dmid aS.v -= #dmax aS.v

			# Perform this operation on the collected values
			# ((c - b) * dmin) + ((b - a) * dmid) + (a * dmax)
			scoreboard players operation #a aS.v = $astar.straight_movement_cost aS.v
			scoreboard players operation #b aS.v = $astar.diagonal_movement_cost aS.v
			scoreboard players operation #c aS.v = $astar.vertical_movement_cost aS.v
			# cb = (c - b)
			scoreboard players operation #c aS.v -= #b aS.v
			# ba = (b - a)
			scoreboard players operation #b aS.v -= #a aS.v
			# admax = (a * dmax)
			scoreboard players operation #a aS.v *= #dmax aS.v
			# badmid = (ba * dmid)
			scoreboard players operation #b aS.v *= #dmid aS.v
			# cbdmin = (bc * dmin)
			scoreboard players operation #c aS.v *= #dmin aS.v
			# (cbdmin + bdmid + admax)
			scoreboard players operation #c aS.v += #b aS.v
			scoreboard players operation #c aS.v += #a aS.v

			# Set node.h to the end result
			scoreboard players operation @s aS.node.h = #c aS.v

			#> G Cost
			# aS.move_cost is calculated in the summon command and set based on the move being made. Eg straight, diagonal, or vertical
			scoreboard players operation @s aS.node.g = #aS.move_cost aS.v

			# Multiply cost based on block
			execute if block ~ ~-1 ~ #astar:weighted2x run scoreboard players operation @s aS.node.g *= #2 aS.v
			execute if block ~ ~-1 ~ #astar:weighted4x run scoreboard players operation @s aS.node.g *= #4 aS.v
			execute if block ~ ~-1 ~ #astar:weighted8x run scoreboard players operation @s aS.node.g *= #8 aS.v
			execute if block ~ ~-1 ~ #astar:weighted16x run scoreboard players operation @s aS.node.g *= #16 aS.v

			# Add the parent's g cost
			scoreboard players operation @s aS.node.g += #aS.parent.g aS.v

			#> F Cost
			# (node.g + node.h)
			scoreboard players operation @s aS.node.f = @s aS.node.g
			scoreboard players operation @s aS.node.f += @s aS.node.h

			# Path Statistics
			!IF(config.astar.debug.path_statistics){
				scoreboard players add #aS.calculated_nodes aS.v 1
			}
		}
	}

	!IF(config.astar.debug.path_statistics){
		function show_stats {
			# Debug data collection
			log info score #aS.total_ms aS.v 0
			log info score #aS.path_nodes aS.v 0
			log info score #aS.opened_nodes aS.v 0
			log info score #aS.calculated_nodes aS.v 0
			log info score #aS.closed_nodes aS.v 0

			log info score #aS.f_cost_breaks aS.v 0
			log info score #aS.h_cost_breaks aS.v 0
			log info score #aS.random_breaks aS.v 0
		}
	}

	dir search {
		function start {
			# Reset variables
			scoreboard players set #aS.last_node_id aS.v 0
			scoreboard players set #aS.closed_nodes aS.v 0
			!IF(config.astar.debug.path_statistics){
				# Debug data collection
				scoreboard players set #aS.total_ms aS.v 0
				scoreboard players set #aS.path_nodes aS.v 0
				scoreboard players set #aS.opened_nodes aS.v 0
				scoreboard players set #aS.calculated_nodes aS.v 0
				scoreboard players set #aS.closed_nodes aS.v 0

				scoreboard players set #aS.f_cost_breaks aS.v 0
				scoreboard players set #aS.h_cost_breaks aS.v 0
				scoreboard players set #aS.random_breaks aS.v 0
			}
			!IF(config.astar.debug.display_previous_path) {
				kill @e[type=marker,tag=aS.path]
			}

			# Set the machine's state to ACTIVE (1)
			scoreboard players set #aS.state aS.v 1

			# Get the next path in the queue
			data modify storage astar:ram this.path set from storage astar:ram path_queue[0]
			execute store result score $astar.max_closed_nodes aS.v run data get storage astar:ram this.path.max_closed_nodes 1
			!IF(config.astar.debug.verbose){
				log info score $astar.max_closed_nodes aS.v
			}
			execute if score $astar.max_closed_nodes aS.v matches 0 run scoreboard players operation $astar.max_closed_nodes aS.v = $astar.default_max_closed_nodes aS.v
			data remove storage astar:ram path_queue[0]

			# Get the path ID
			execute store result score #aS.path.id aS.v run data get storage astar:ram this.path.id
			# Get the start and end coordinates
			execute store result score #aS.path.start.x aS.v run data get storage astar:ram this.path.start[0]
			execute store result score #aS.path.start.y aS.v run data get storage astar:ram this.path.start[1]
			execute store result score #aS.path.start.z aS.v run data get storage astar:ram this.path.start[2]
			execute store result score #aS.path.end.x aS.v run data get storage astar:ram this.path.end[0]
			execute store result score #aS.path.end.y aS.v run data get storage astar:ram this.path.end[1]
			execute store result score #aS.path.end.z aS.v run data get storage astar:ram this.path.end[2]
			# Get the path intermediate flag
			execute store result score #aS.path.can_return_intermediate aS.v run data get storage astar:ram this.path.can_return_intermediate

			!IF(config.astar.debug.verbose){
				log info json [{"text":"Solving next path in queue","color":"yellow"}]
				log info score #aS.path.id aS.v
			}

			# Summon the start node
			summon marker ~ ~ ~ {Tags:['aS.start', 'aS.node', 'aS.next']}
			execute as @e[type=marker,tag=aS.start,limit=1] at @s run{
				# Move this marker to the start position
				data modify entity @s Pos set from storage astar:ram this.path.start
				# Calculate the start node
				function astar:internal/node/calculate
				# Make sure the start node is the most preferable when returning
				scoreboard players set @s aS.node.g 0
				scoreboard players set @s aS.node.h 0
				scoreboard players set @s aS.node.f 0
				# Start the pathfinding
				function astar:internal/search/async/start_next_tick
			}
		}

		dir async {
			function start_next_tick {
				worldborder set 59999968
				worldborder set 59997968 2
				function astar:internal/search/async/loop
			}

			function loop {
				# Get the ms elapsed since the beginning of this tick
				function astar:internal/async/get_worldborder
				# If the state machine is ACTIVE and SEARCHING the current ms is < max
				execute (if score #aS.state aS.v matches 1 if score #aS.ms aS.v < $astar.max_ms_per_tick aS.v) {
					execute as @e[type=marker,tag=aS.next,limit=1] at @s run function astar:internal/search/check_next_node
					function $parent
				# If the state machine is ACTIVE and the current ms is >= max
				} else execute (if score #aS.state aS.v matches 1) {
					# Path Statistics
					!IF(config.astar.debug.path_statistics){
						scoreboard players operation #aS.total_ms aS.v += #aS.ms aS.v
					}
					!IF(config.astar.debug.title_status){
						title @a times 0 6 0
						title @a subtitle ["",{"text":"A* searching..."}]
						title @a title ""
					}
					# Schedule the next tick
					schedule function astar:internal/search/async/start_next_tick 1t
				}
			}
		}

		function check_next_node {
			# Close this node
			tag @s remove aS.next
			tag @s add aS.closed
			# Add 1 to closed nodes
			scoreboard players add #aS.closed_nodes aS.v 1

			# If this node is at the end of the path
			execute (if score @s aS.node.x = #aS.path.end.x aS.v if score @s aS.node.y = #aS.path.end.y aS.v if score @s aS.node.z = #aS.path.end.z aS.v) {
				# Tag this node as the end node
				tag @s add aS.end
				# Complete the search
				function astar:internal/search/complete_search
			# Else if the number of closed nodes is >= max
			} else execute (if score #aS.closed_nodes aS.v >= $astar.max_closed_nodes aS.v) {
				# FIXME Add cleanup
				# Complete the search as intermediate
				!IF(config.astar.developer_mode){
					log warning json <%JSON.stringify(config.astar.internal.error.max_closed_reached)%>
				}
				function astar:internal/search/complete_intermidate
			} else {
				function astar:internal/search/spread
				function astar:internal/search/solve_lowest_f_cost
			}
		}

		function update_node {
			# If this node has already been summoned
			execute (as @e[type=marker,tag=aS.node,distance=..0.1,limit=1]) {
				execute if entity @s[tag=!aS.closed] run {
					!IF(config.astar.debug.particles) {
						particle minecraft:block_marker barrier ~ ~.5 ~
					}
					# Add the cost of moving to this node from the parent
					scoreboard players operation # aS.v = #aS.parent.g aS.v
					# Multiply cost based on block
					execute if block ~ ~-1 ~ #astar:weighted2x run scoreboard players operation # aS.v *= #2 aS.v
					execute if block ~ ~-1 ~ #astar:weighted4x run scoreboard players operation # aS.v *= #4 aS.v
					execute if block ~ ~-1 ~ #astar:weighted8x run scoreboard players operation # aS.v *= #8 aS.v
					execute if block ~ ~-1 ~ #astar:weighted16x run scoreboard players operation # aS.v *= #16 aS.v
					# Get the g cost of the current parent
					scoreboard players operation # aS.v += #aS.move_cost aS.v
					# If this node's g cost is lower than the calculated g cost
					execute if score @s aS.node.g > # aS.v run {
						# Set this node's parent to the current parent
						scoreboard players operation @s aS.node.p = #aS.parent.id aS.v
						# Set this node's g cost to the calculated g cost
						scoreboard players operation @s aS.node.g = # aS.v
						# Update this node's f cost
						scoreboard players operation @s aS.node.f = @s aS.node.h
						scoreboard players operation @s aS.node.f += @s aS.node.g
					}
				}
			# If this node has not been summoned
			} else {
				!IF(config.astar.path_statistics){
					# Debug statistics
					scoreboard players add #aS.opened_nodes aS.v 1
				}
				# Create a new node
				function astar:internal/node/create
			}
		}

		function spread {
			# Set parent variables
			scoreboard players operation #aS.parent.g aS.v = @s aS.node.g
			scoreboard players operation #aS.parent.id aS.v = @s aS.node.id

			!IF(!config.astar.options.allow_three_dimensional_pathing){
				# Collect nearby block information for 2D pathing
				LOOP(3,y){
					LOOP(3,x){
						LOOP(3,z){
							execute store result score #x<%x-1%>y<%y-1%>z<%z-1%> aS.v unless block ~<%x-1%> ~<%y-1%> ~<%z-1%> #astar:can_path_through
						}
					}
				}
			}
			!IF(config.astar.options.allow_three_dimensional_pathing){
				# Collect nearby block information for 3D pathing
				LOOP(5,y){
					LOOP(3,x){
						LOOP(3,z){
							execute store result score #x<%x-1%>y<%y-2%>z<%z-1%> aS.v unless block ~<%x-1%> ~<%y-2%> ~<%z-1%> #astar:can_path_through
						}
					}
				}
			}
			!IF(config.astar.options.allow_straight_movement){
				# Straight flat movement validation
				scoreboard players operation #aS.move_cost aS.v = $astar.straight_movement_cost aS.v
				LOOP(3,x){
					LOOP(3,z){
						!IF(x-1 != 0 ? !(z-1 != 0) : z-1 != 0){
							(
								execute
								if score #x<%x-1%>y-1z<%z-1%> aS.v matches 1
								if score #x<%x-1%>y0z<%z-1%> aS.v matches 0
								if score #x<%x-1%>y1z<%z-1%> aS.v matches 0
								positioned ~<%x-1%> ~ ~<%z-1%>
								if block ~ ~-1 ~ #astar:can_path_on
								run function astar:internal/search/update_node
							)
						}
					}
				}
			}
			!IF(config.astar.options.allow_three_dimensional_pathing && config.astar.options.allow_straight_movement){
				# Straight upward movement validation
				scoreboard players operation #aS.move_cost aS.v += $astar.vertical_movement_cost aS.v
				LOOP(3,x){
					LOOP(3,z){
						!IF(x-1 != 0 ? !(z-1 != 0) : z-1 != 0){
							(
								execute
								if score #x<%x-1%>y-1z<%z-1%> aS.v matches 1
								if score #x<%x-1%>y0z<%z-1%> aS.v matches 0
								if score #x<%x-1%>y1z<%z-1%> aS.v matches 0
								positioned ~<%x-1%> ~ ~<%z-1%>
								if block ~ ~-1 ~ #astar:can_path_on
								run function astar:internal/search/update_node
							)
						}
					}
				}
			}
			!IF(config.astar.options.allow_diagonal_movement){
				# Diagonal flat movement validation
				scoreboard players operation #aS.move_cost aS.v = $astar.diagonal_movement_cost aS.v
				LOOP(3,x){
					LOOP(3,z){
						!IF(x-1 != 0 && z-1 != 0){
							(
								execute
								if score #x<%x-1%>y-1z<%z-1%> aS.v matches 1
								if score #x<%x-1%>y0z<%z-1%> aS.v matches 0
								if score #x<%x-1%>y1z<%z-1%> aS.v matches 0
								if score #x0y0z<%z-1%> aS.v matches 0
								if score #x0y1z<%z-1%> aS.v matches 0
								if score #x<%x-1%>y0z0 aS.v matches 0
								if score #x<%x-1%>y1z0 aS.v matches 0
								positioned ~<%x-1%> ~ ~<%z-1%>
								if block ~ ~-1 ~ #astar:can_path_on
								run function astar:internal/search/update_node
							)
						}
					}
				}
			}
		}

		function solve_lowest_f_cost {
			# Solve for lowest F cost
			scoreboard players set #aS.min_f.count aS.v 0
			scoreboard players set #aS.min_f aS.v 2147483647
			scoreboard players operation #aS.min_f aS.v < @e[type=marker,tag=aS.node,tag=!aS.closed,distance=0.1..] aS.node.f
			# FIXME Double check that the predicate is faster in this instance
			execute as @e[type=marker,tag=aS.node,tag=!aS.closed,distance=0.1..,predicate=astar:select_lowest_f_cost] run{
				scoreboard players add #aS.min_f.count aS.v 1
				tag @s add aS.min_f
			}
			# If there is only one node that has the lowest F cost
			execute (if score #aS.min_f.count aS.v matches 1 as @e[type=marker,tag=aS.min_f,distance=0.1..,limit=1]) {
				# Debug statistics
				!IF(config.astar.debug.path_statistics){
					scoreboard players add #aS.f_cost_breaks aS.v 1
				}
				# Mark this node as next
				tag @s add aS.next
				tag @s remove aS.min_f
			# If there is more than 1 node with the lowest F cost we select between them based on lowest H cost
			} else execute (if score #aS.min_f.count aS.v matches 2..) {
				function astar:internal/search/solve_lowest_h_cost
			} else {
				!IF(config.astar.developer_mode){
					log warning json <%JSON.stringify(config.astar.internal.error.no_open_nodes)%>
				}
				function astar:internal/search/complete_intermidate
			}
		}

		function solve_lowest_h_cost {
			# Solve for lowest H cost
			scoreboard players set #aS.min_h.count aS.v 0
			scoreboard players set #aS.min_h aS.v 2147483647
			scoreboard players operation #aS.min_h aS.v < @e[type=marker,tag=aS.min_f,tag=!aS.closed,distance=0.1..] aS.node.h
			# FIXME Double check that the predicate is faster in this instance
			execute as @e[type=marker,tag=aS.min_f,tag=!aS.closed,distance=0.1..,predicate=astar:select_lowest_h_cost] run{
				scoreboard players add #aS.min_h.count aS.v 1
				tag @s add aS.min_h
			}
			# Remove aS.min_f tag from all nodes
			tag @e[type=marker,tag=aS.node,distance=0.1..] remove aS.min_f
			# If there is only one node with lowest H cost under F cost
			execute (if score #aS.min_h.count aS.v matches 1 as @e[type=marker,tag=aS.min_h,distance=0.1..,limit=1]) {
				# Debug statistics
				!IF(config.astar.debug.path_statistics){
					scoreboard players add #aS.h_cost_breaks aS.v 1
				}
				# Mark this node as next
				tag @s add aS.next
				tag @s remove aS.min_h
			# If there is more than one node with the minimum found H cost
			} else execute (if score #aS.min_h.count aS.v matches 2..) {
				# Take the first arbitrarally chosen node with min H cost
				execute as @e[type=marker,tag=aS.min_h,distance=0.1..,limit=1] run tag @s add aS.next
				# Remove the left over tags from all nodes
				execute as @e[type=marker,tag=aS.node] run {
					tag @s remove aS.min_f
					tag @s remove aS.min_h
				}
			# If there aren't any nodes found, something went wrong
			} else {
				!IF(config.astar.developer_mode){
					log warning json <%JSON.stringify(config.astar.internal.error.h_cost_not_found)%>
				}
				function astar:internal/search/fail_search
			}
		}

		function solve_lowest_h_cost_intermediate {
			# Solve for lowest H cost
			scoreboard players set #aS.min_h.count aS.v 0
			scoreboard players set #aS.min_h aS.v 2147483647
			scoreboard players operation #aS.min_h aS.v < @e[type=marker,tag=aS.node,tag=!aS.start,distance=0.1..] aS.node.h
			# FIXME Double check that the predicate is faster in this instance
			execute as @e[type=marker,tag=aS.node,tag=!aS.start,distance=0.1..,predicate=astar:select_lowest_h_cost] run {
				scoreboard players add #aS.min_h.count aS.v 1
				tag @s add aS.min_h
			}
			# If there is only one node with lowest H cost
			execute (if score #aS.min_h.count aS.v matches 1 as @e[type=marker,tag=aS.min_h,distance=0.1..,limit=1]) {
				# Debug statistics
				!IF(config.astar.debug.path_statistics){
					scoreboard players add #aS.h_cost_breaks aS.v 1
				}
				# Mark this node as the end
				tag @s add aS.end
			# If there is more than one node with the minimum found H cost
			} else execute (if score #aS.min_h.count aS.v matches 2..) {
				# Take the first arbitrarally chosen node with min H cost
				execute as @e[type=marker,tag=aS.min_h,distance=0.1..,limit=1] run tag @s add aS.end
				# Remove the left over tags from all nodes
				tag @e[type=marker,tag=aS.node] remove aS.min_h
			# If there aren't any nodes found, something went wrong
			} else {
				!IF(config.astar.developer_mode){
					log warning json <%JSON.stringify(config.astar.internal.error.h_cost_not_found)%>
				}
				function astar:internal/search/fail_search
			}
		}

		function complete_intermidate {
			# If this path has intermediate pathing enabled return an intermediate path, else fail the search.
			execute (if data storage astar:ram {this:{path:{can_return_intermediate:true}}}) {
				data modify storage astar:ram this.path.is_intermediate set value true
				function astar:internal/search/solve_lowest_h_cost_intermediate
				execute as @e[type=marker,tag=aS.end] at @s run function astar:internal/search/complete_search
			} else {
				data modify storage astar:ram this.path.is_intermediate set value true
				function astar:internal/cleanup_path
				function astar:internal/search/fail_search
			}
		}

		# Called when the search fails to find the end of the pach or encounters a fatal error
		function fail_search {
			!IF(config.astar.developer_mode){
				log warning json <%JSON.stringify(config.astar.internal.error.path_failed)%>
			}
			scoreboard players set #aS.state aS.v 0
			function astar:internal/cleanup_path
			# Add node list to path object
			data modify storage astar:ram this.path.nodes set value []
			data modify storage astar:ram this.path.failed set value true
			# run callback functions
			execute as @e[tag=aS.waiting_for_solve] if score @s aS.v = #aS.path.id aS.v at @s run function #astar:on_path_found
			data remove storage astar:ram this.path
		}

		function complete_search {
			!IF(config.astar.debug.verbose){
				log info text Found end node
			}
			# Add node list to path object
			data modify storage astar:ram this.path.nodes set value []
			# Stop search tick
			schedule clear astar:internal/search/async/start_next_tick
			# Start returning
			function astar:internal/return/start
		}
	}

	dir return {
		function start {
			tag @s add aS.next
			scoreboard players set #aS.state aS.v 2
			function astar:internal/return/async/start_next_tick
		}

		function to_parent {
			# Mark this node as a path node
			tag @s add aS.path
			# Remove next tag
			tag @s remove aS.next
			# Debug Particles
			!IF(config.astar.debug.particles) {
				particle minecraft:block_marker barrier ~ ~.5 ~
			}
			# Store this node into the solved path
			data modify storage astar:ram this.path.nodes prepend value [0d,0d,0d]
			execute store result storage astar:ram this.path.nodes[0][0] double 1 run scoreboard players get @s aS.node.x
			execute store result storage astar:ram this.path.nodes[0][1] double 1 run scoreboard players get @s aS.node.y
			execute store result storage astar:ram this.path.nodes[0][2] double 1 run scoreboard players get @s aS.node.z
			# Count the path nodes
			!IF(config.astar.debug.path_statistics){
				scoreboard players add #aS.path_nodes aS.v 1
			}

			# If this is not the start node
			execute unless entity @s[tag=aS.start] run {
				scoreboard players operation # aS.v = @s aS.node.p
				execute as @e[type=marker,tag=aS.closed,distance=0.1..2] if score @s aS.node.id = # aS.v at @s run function astar:internal/return/async/loop
			}
			# else
			execute if entity @s[tag=aS.start] run function astar:internal/return/complete_return
		}

		function complete_return {
			function astar:internal/cleanup_path
			# Debug statistics
			!IF(config.astar.debug.path_statistics){
				function astar:internal/show_stats
			}
			# Set the solver's state to IDLE
			scoreboard players set #aS.state aS.v 0
			# run callback functions
			execute as @e[tag=aS.waiting_for_solve] if score @s aS.v = #aS.path.id aS.v at @s run function #astar:on_path_found
		}

		dir async {
			function start_next_tick {
				worldborder set 59999968
				worldborder set 59997968 2
				execute as @e[type=marker,tag=aS.next] at @s run function astar:internal/return/async/loop
			}

			function loop {
				# Get the ms elapsed since the beginning of this tick
				function astar:internal/async/get_worldborder
				# If the state machine is ACTIVE and RETURNING and the current ms is < max
				execute (if score #aS.state aS.v matches 2 if score #aS.ms aS.v < $astar.max_ms_per_tick aS.v) {
					function astar:internal/return/to_parent
					# loop is called by to_parent if a valid parent is found
					# function $parent
				# If the state machine is ACTIVE and RETURNING and the current ms is >= max
				} else execute (if score #aS.state aS.v matches 2) {
					!IF(config.astar.debug.title_status){
						title @a times 0 6 0
						title @a subtitle ["",{"text":"A* returning..."}]
						title @a title ""
					}
					# Path Statistics
					!IF(config.astar.debug.path_statistics){
						scoreboard players operation #aS.total_ms aS.v += #aS.ms aS.v
					}
					tag @s add aS.next
					# Schedule the next tick
					schedule function astar:internal/return/async/start_next_tick 1t
				}
			}
		}
	}
}

