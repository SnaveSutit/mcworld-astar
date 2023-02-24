function reset_animation_flags {
	scoreboard players set .aj.animation aj.player.animating 0
	scoreboard players set .aj.anim_loop aj.player.animating 0
	scoreboard players set .noScripts aj.i 0
}
function assert_animation_flags {
	scoreboard players add .aj.animation aj.player.animating 0
	scoreboard players add .aj.anim_loop aj.player.animating 0
	scoreboard players add .noScripts aj.i 0
}
function install {
	scoreboard objectives add aj.i dummy
	scoreboard objectives add aj.id dummy
	scoreboard objectives add aj.player.animating dummy
	scoreboard objectives add aj.player.floss.loopMode dummy
	scoreboard objectives add aj.player.floss.frame dummy
	scoreboard objectives add aj.player.walk.loopMode dummy
	scoreboard objectives add aj.player.walk.frame dummy
	scoreboard objectives add aj.player.start_walk.loopMode dummy
	scoreboard objectives add aj.player.start_walk.frame dummy
	scoreboard objectives add aj.player.idle.loopMode dummy
	scoreboard objectives add aj.player.idle.frame dummy
	scoreboard objectives add aj.player.end_walk.loopMode dummy
	scoreboard objectives add aj.player.end_walk.frame dummy
	function player:reset_animation_flags
	scoreboard players set #uninstall aj.i 0
	scoreboard players set .aj.player.framerate aj.i 1
	tellraw @a [{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"aqua"},{"text":" → ","color":"gray"},{"text":"Install ⊻","color":"green"},{"text":" ]","color":"dark_gray"},"\n",{"text":"Installed ","color":"gray"},{"text":"armor_stand","color":"gold"},{"text":" rig.","color":"gray"},"\n",{"text":"◘ ","color":"gray"},{"text":"Included Scoreboard Objectives:","color":"green"},"\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.i","color":"aqua"},{"text":" (Internal)","color":"dark_gray"},"\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.id","color":"aqua"},{"text":" (ID)","color":"dark_gray"},"\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.player.animating","color":"aqua"},{"text":" (Animation Flag)","color":"dark_gray"},[["\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.player.floss.loopMode","color":"aqua"},{"text":" (Loop Mode)","color":"dark_gray"},"\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.player.floss.frame","color":"aqua"},{"text":" (Frame)","color":"dark_gray"}],["\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.player.walk.loopMode","color":"aqua"},{"text":" (Loop Mode)","color":"dark_gray"},"\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.player.walk.frame","color":"aqua"},{"text":" (Frame)","color":"dark_gray"}],["\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.player.start_walk.loopMode","color":"aqua"},{"text":" (Loop Mode)","color":"dark_gray"},"\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.player.start_walk.frame","color":"aqua"},{"text":" (Frame)","color":"dark_gray"}],["\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.player.idle.loopMode","color":"aqua"},{"text":" (Loop Mode)","color":"dark_gray"},"\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.player.idle.frame","color":"aqua"},{"text":" (Frame)","color":"dark_gray"}],["\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.player.end_walk.loopMode","color":"aqua"},{"text":" (Loop Mode)","color":"dark_gray"},"\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.player.end_walk.frame","color":"aqua"},{"text":" (Frame)","color":"dark_gray"}]]]
}
function uninstall {
	scoreboard objectives remove aj.player.animating
	scoreboard objectives remove aj.player.floss.loopMode
	scoreboard objectives remove aj.player.floss.frame
	scoreboard objectives remove aj.player.walk.loopMode
	scoreboard objectives remove aj.player.walk.frame
	scoreboard objectives remove aj.player.start_walk.loopMode
	scoreboard objectives remove aj.player.start_walk.frame
	scoreboard objectives remove aj.player.idle.loopMode
	scoreboard objectives remove aj.player.idle.frame
	scoreboard objectives remove aj.player.end_walk.loopMode
	scoreboard objectives remove aj.player.end_walk.frame
	scoreboard players set #uninstall aj.i 1
	tellraw @a [{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"aqua"},{"text":" → ","color":"gray"},{"text":"Uninstall ⊽","color":"red"},{"text":" ]","color":"dark_gray"},"\n",{"text":"Uninstalled ","color":"gray"},{"text":"armor_stand","color":"gold"},{"text":" rig specific scoreboards","color":"gray"},"\n",{"text":"◘ ","color":"gray"},{"text":"Included Scoreboard Objectives:","color":"green"},"\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.player.animating","color":"aqua"},{"text":" (Animation Flag)","color":"dark_gray"},[["\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.player.floss.loopMode","color":"aqua"},{"text":" (Loop Mode)","color":"dark_gray"},"\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.player.floss.frame","color":"aqua"},{"text":" (Frame)","color":"dark_gray"}],["\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.player.walk.loopMode","color":"aqua"},{"text":" (Loop Mode)","color":"dark_gray"},"\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.player.walk.frame","color":"aqua"},{"text":" (Frame)","color":"dark_gray"}],["\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.player.start_walk.loopMode","color":"aqua"},{"text":" (Loop Mode)","color":"dark_gray"},"\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.player.start_walk.frame","color":"aqua"},{"text":" (Frame)","color":"dark_gray"}],["\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.player.idle.loopMode","color":"aqua"},{"text":" (Loop Mode)","color":"dark_gray"},"\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.player.idle.frame","color":"aqua"},{"text":" (Frame)","color":"dark_gray"}],["\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.player.end_walk.loopMode","color":"aqua"},{"text":" (Loop Mode)","color":"dark_gray"},"\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.player.end_walk.frame","color":"aqua"},{"text":" (Frame)","color":"dark_gray"}]],"\n","\n",{"text":"◘ ","color":"gray"},{"text":"Would you like to uninstall all AJ scoreboard objectives unrelated to this rig as well?","color":"green"},"\n",{"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/function player:uninstall/remove_aj_related"}},{"text":" [No]","color":"red","clickEvent":{"action":"run_command","value":"/function player:uninstall/keep_aj_related"}}]
}
dir uninstall {
	function keep_aj_related {
		execute if score #uninstall aj.i matches 0 run tellraw @a [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"Uninstall not in-progress. Please run","color":"gray"},"\n",{"text":" function player:uninstall","color":"red"},"\n",{"text":" to start the uninstallation process.","color":"gray"}]
		execute if score #uninstall aj.i matches 1 run {
			scoreboard players set #uninstall aj.i 0
			tellraw @a [{"text":"Keeping AJ specific scoreboard objectives.","color":"green"}]
		}
	}
	function remove_aj_related {
		execute if score #uninstall aj.i matches 0 run tellraw @a [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"Uninstall not in-progress. Please run","color":"gray"},"\n",{"text":" function player:uninstall","color":"red"},"\n",{"text":" to start the uninstallation process.","color":"gray"}]
		execute if score #uninstall aj.i matches 1 run {
			scoreboard players set #uninstall aj.i 0
			scoreboard objectives remove aj.i
			scoreboard objectives remove aj.id
			tellraw @a [{"text":"Removed AJ specific scoreboard objectives:","color":"green"},"\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.i","color":"aqua"},{"text":" (Internal)","color":"dark_gray"},"\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.id","color":"aqua"},{"text":" (ID)","color":"dark_gray"}]
		}
	}
}
entities bone_entities {
	minecraft:area_effect_cloud
	minecraft:armor_stand
}
dir remove {
	function all {
		kill @e[type=minecraft:marker,tag=aj.player]
		kill @e[type=#player:bone_entities,tag=aj.player]
	}
	function this {
		execute (if entity @s[tag=aj.player.root] at @s) {
			scoreboard players operation # aj.id = @s aj.id
			execute as @e[type=#player:bone_entities,tag=aj.player,distance=..4.365] if score @s aj.id = # aj.id run kill @s
			kill @s
		} else {
			tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:remove/this ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
		}
	}
}
dir summon {
	function snavesutit {
		# Summon Root Entity
		summon minecraft:marker ~ ~ ~ {Tags:['new','aj.player','aj.player.root']}
		# Execute as summoned root
		execute as @e[type=minecraft:marker,tag=aj.player.root,tag=new,distance=..1,limit=1] rotated ~ 0 run {
			# Copy the execution position and rotation onto the root
			tp @s ~ ~ ~ ~ ~
			# Get an ID for this rig
			execute store result score @s aj.id run scoreboard players add .aj.last_id aj.i 1
			# Execute at updated location
			execute at @s run {
				# Summon all bone entities
				summon minecraft:area_effect_cloud ^0 ^-1.20987 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.body'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.body','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:7}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^0 ^-0.50675 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.head'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.head','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:8}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^-0.29297 ^-0.62394 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightarm'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightarm','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:9}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^0.29297 ^-0.62394 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftarm'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftarm','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:10}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^0.11133 ^-1.20987 ^-0.00586 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftleg'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftleg','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:11}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^-0.11133 ^-1.20987 ^-0.00586 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightleg'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightleg','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:12}}],Pose:{Head:[0f,0f,0f]}}]}
				# Update rotation and ID of bone entities to match the root entity
				execute as @e[type=#player:bone_entities,tag=aj.player,tag=new,distance=..4.365] positioned as @s run {
					scoreboard players operation @s aj.id = .aj.last_id aj.i
					tp @s ~ ~ ~ ~ ~
					tag @s remove new
				}
			}
			tag @s remove new
			# Set all animation modes to configured default
			scoreboard players set @s aj.player.floss.frame 0
			scoreboard players set @s aj.player.floss.loopMode 2
			scoreboard players set @s aj.player.walk.frame 0
			scoreboard players set @s aj.player.walk.loopMode 2
			scoreboard players set @s aj.player.start_walk.frame 0
			scoreboard players set @s aj.player.start_walk.loopMode 1
			scoreboard players set @s aj.player.idle.frame 0
			scoreboard players set @s aj.player.idle.loopMode 2
			scoreboard players set @s aj.player.end_walk.frame 0
			scoreboard players set @s aj.player.end_walk.loopMode 1
			scoreboard players set @s aj.player.animating 0
		}
		# Assert animation flags
		function player:assert_animation_flags
	}
	function steve {
		# Summon Root Entity
		summon minecraft:marker ~ ~ ~ {Tags:['new','aj.player','aj.player.root']}
		# Execute as summoned root
		execute as @e[type=minecraft:marker,tag=aj.player.root,tag=new,distance=..1,limit=1] rotated ~ 0 run {
			# Copy the execution position and rotation onto the root
			tp @s ~ ~ ~ ~ ~
			# Get an ID for this rig
			execute store result score @s aj.id run scoreboard players add .aj.last_id aj.i 1
			# Execute at updated location
			execute at @s run {
				# Summon all bone entities
				summon minecraft:area_effect_cloud ^0 ^-1.20987 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.body'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.body','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:13}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^0 ^-0.50675 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.head'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.head','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:14}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^-0.29297 ^-0.62394 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightarm'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightarm','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:15}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^0.29297 ^-0.62394 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftarm'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftarm','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:16}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^0.11133 ^-1.20987 ^-0.00586 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftleg'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftleg','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:17}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^-0.11133 ^-1.20987 ^-0.00586 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightleg'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightleg','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:18}}],Pose:{Head:[0f,0f,0f]}}]}
				# Update rotation and ID of bone entities to match the root entity
				execute as @e[type=#player:bone_entities,tag=aj.player,tag=new,distance=..4.365] positioned as @s run {
					scoreboard players operation @s aj.id = .aj.last_id aj.i
					tp @s ~ ~ ~ ~ ~
					tag @s remove new
				}
			}
			tag @s remove new
			# Set all animation modes to configured default
			scoreboard players set @s aj.player.floss.frame 0
			scoreboard players set @s aj.player.floss.loopMode 2
			scoreboard players set @s aj.player.walk.frame 0
			scoreboard players set @s aj.player.walk.loopMode 2
			scoreboard players set @s aj.player.start_walk.frame 0
			scoreboard players set @s aj.player.start_walk.loopMode 1
			scoreboard players set @s aj.player.idle.frame 0
			scoreboard players set @s aj.player.idle.loopMode 2
			scoreboard players set @s aj.player.end_walk.frame 0
			scoreboard players set @s aj.player.end_walk.loopMode 1
			scoreboard players set @s aj.player.animating 0
		}
		# Assert animation flags
		function player:assert_animation_flags
	}
	function alex {
		# Summon Root Entity
		summon minecraft:marker ~ ~ ~ {Tags:['new','aj.player','aj.player.root']}
		# Execute as summoned root
		execute as @e[type=minecraft:marker,tag=aj.player.root,tag=new,distance=..1,limit=1] rotated ~ 0 run {
			# Copy the execution position and rotation onto the root
			tp @s ~ ~ ~ ~ ~
			# Get an ID for this rig
			execute store result score @s aj.id run scoreboard players add .aj.last_id aj.i 1
			# Execute at updated location
			execute at @s run {
				# Summon all bone entities
				summon minecraft:area_effect_cloud ^0 ^-1.20987 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.body'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.body','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:19}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^0 ^-0.50675 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.head'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.head','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:20}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^-0.29297 ^-0.62394 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightarm'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightarm','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:21}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^0.29297 ^-0.62394 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftarm'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftarm','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:22}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^0.11133 ^-1.20987 ^-0.00586 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftleg'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftleg','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:23}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^-0.11133 ^-1.20987 ^-0.00586 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightleg'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightleg','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:24}}],Pose:{Head:[0f,0f,0f]}}]}
				# Update rotation and ID of bone entities to match the root entity
				execute as @e[type=#player:bone_entities,tag=aj.player,tag=new,distance=..4.365] positioned as @s run {
					scoreboard players operation @s aj.id = .aj.last_id aj.i
					tp @s ~ ~ ~ ~ ~
					tag @s remove new
				}
			}
			tag @s remove new
			# Set all animation modes to configured default
			scoreboard players set @s aj.player.floss.frame 0
			scoreboard players set @s aj.player.floss.loopMode 2
			scoreboard players set @s aj.player.walk.frame 0
			scoreboard players set @s aj.player.walk.loopMode 2
			scoreboard players set @s aj.player.start_walk.frame 0
			scoreboard players set @s aj.player.start_walk.loopMode 1
			scoreboard players set @s aj.player.idle.frame 0
			scoreboard players set @s aj.player.idle.loopMode 2
			scoreboard players set @s aj.player.end_walk.frame 0
			scoreboard players set @s aj.player.end_walk.loopMode 1
			scoreboard players set @s aj.player.animating 0
		}
		# Assert animation flags
		function player:assert_animation_flags
	}
	function fetchbot {
		# Summon Root Entity
		summon minecraft:marker ~ ~ ~ {Tags:['new','aj.player','aj.player.root']}
		# Execute as summoned root
		execute as @e[type=minecraft:marker,tag=aj.player.root,tag=new,distance=..1,limit=1] rotated ~ 0 run {
			# Copy the execution position and rotation onto the root
			tp @s ~ ~ ~ ~ ~
			# Get an ID for this rig
			execute store result score @s aj.id run scoreboard players add .aj.last_id aj.i 1
			# Execute at updated location
			execute at @s run {
				# Summon all bone entities
				summon minecraft:area_effect_cloud ^0 ^-1.20987 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.body'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.body','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:25}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^0 ^-0.50675 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.head'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.head','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:26}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^-0.29297 ^-0.62394 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightarm'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightarm','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:27}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^0.29297 ^-0.62394 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftarm'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftarm','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:28}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^0.11133 ^-1.20987 ^-0.00586 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftleg'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftleg','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:29}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^-0.11133 ^-1.20987 ^-0.00586 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightleg'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightleg','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:30}}],Pose:{Head:[0f,0f,0f]}}]}
				# Update rotation and ID of bone entities to match the root entity
				execute as @e[type=#player:bone_entities,tag=aj.player,tag=new,distance=..4.365] positioned as @s run {
					scoreboard players operation @s aj.id = .aj.last_id aj.i
					tp @s ~ ~ ~ ~ ~
					tag @s remove new
				}
			}
			tag @s remove new
			# Set all animation modes to configured default
			scoreboard players set @s aj.player.floss.frame 0
			scoreboard players set @s aj.player.floss.loopMode 2
			scoreboard players set @s aj.player.walk.frame 0
			scoreboard players set @s aj.player.walk.loopMode 2
			scoreboard players set @s aj.player.start_walk.frame 0
			scoreboard players set @s aj.player.start_walk.loopMode 1
			scoreboard players set @s aj.player.idle.frame 0
			scoreboard players set @s aj.player.idle.loopMode 2
			scoreboard players set @s aj.player.end_walk.frame 0
			scoreboard players set @s aj.player.end_walk.loopMode 1
			scoreboard players set @s aj.player.animating 0
		}
		# Assert animation flags
		function player:assert_animation_flags
	}
	function verylyfeless {
		# Summon Root Entity
		summon minecraft:marker ~ ~ ~ {Tags:['new','aj.player','aj.player.root']}
		# Execute as summoned root
		execute as @e[type=minecraft:marker,tag=aj.player.root,tag=new,distance=..1,limit=1] rotated ~ 0 run {
			# Copy the execution position and rotation onto the root
			tp @s ~ ~ ~ ~ ~
			# Get an ID for this rig
			execute store result score @s aj.id run scoreboard players add .aj.last_id aj.i 1
			# Execute at updated location
			execute at @s run {
				# Summon all bone entities
				summon minecraft:area_effect_cloud ^0 ^-1.20987 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.body'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.body','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:31}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^0 ^-0.50675 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.head'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.head','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:32}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^-0.29297 ^-0.62394 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightarm'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightarm','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:33}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^0.29297 ^-0.62394 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftarm'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftarm','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:34}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^0.11133 ^-1.20987 ^-0.00586 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftleg'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftleg','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:35}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^-0.11133 ^-1.20987 ^-0.00586 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightleg'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightleg','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:36}}],Pose:{Head:[0f,0f,0f]}}]}
				# Update rotation and ID of bone entities to match the root entity
				execute as @e[type=#player:bone_entities,tag=aj.player,tag=new,distance=..4.365] positioned as @s run {
					scoreboard players operation @s aj.id = .aj.last_id aj.i
					tp @s ~ ~ ~ ~ ~
					tag @s remove new
				}
			}
			tag @s remove new
			# Set all animation modes to configured default
			scoreboard players set @s aj.player.floss.frame 0
			scoreboard players set @s aj.player.floss.loopMode 2
			scoreboard players set @s aj.player.walk.frame 0
			scoreboard players set @s aj.player.walk.loopMode 2
			scoreboard players set @s aj.player.start_walk.frame 0
			scoreboard players set @s aj.player.start_walk.loopMode 1
			scoreboard players set @s aj.player.idle.frame 0
			scoreboard players set @s aj.player.idle.loopMode 2
			scoreboard players set @s aj.player.end_walk.frame 0
			scoreboard players set @s aj.player.end_walk.loopMode 1
			scoreboard players set @s aj.player.animating 0
		}
		# Assert animation flags
		function player:assert_animation_flags
	}
	function nerdrope {
		# Summon Root Entity
		summon minecraft:marker ~ ~ ~ {Tags:['new','aj.player','aj.player.root']}
		# Execute as summoned root
		execute as @e[type=minecraft:marker,tag=aj.player.root,tag=new,distance=..1,limit=1] rotated ~ 0 run {
			# Copy the execution position and rotation onto the root
			tp @s ~ ~ ~ ~ ~
			# Get an ID for this rig
			execute store result score @s aj.id run scoreboard players add .aj.last_id aj.i 1
			# Execute at updated location
			execute at @s run {
				# Summon all bone entities
				summon minecraft:area_effect_cloud ^0 ^-1.20987 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.body'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.body','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:37}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^0 ^-0.50675 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.head'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.head','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:38}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^-0.29297 ^-0.62394 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightarm'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightarm','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:39}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^0.29297 ^-0.62394 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftarm'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftarm','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:40}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^0.11133 ^-1.20987 ^-0.00586 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftleg'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftleg','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:41}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^-0.11133 ^-1.20987 ^-0.00586 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightleg'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightleg','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:42}}],Pose:{Head:[0f,0f,0f]}}]}
				# Update rotation and ID of bone entities to match the root entity
				execute as @e[type=#player:bone_entities,tag=aj.player,tag=new,distance=..4.365] positioned as @s run {
					scoreboard players operation @s aj.id = .aj.last_id aj.i
					tp @s ~ ~ ~ ~ ~
					tag @s remove new
				}
			}
			tag @s remove new
			# Set all animation modes to configured default
			scoreboard players set @s aj.player.floss.frame 0
			scoreboard players set @s aj.player.floss.loopMode 2
			scoreboard players set @s aj.player.walk.frame 0
			scoreboard players set @s aj.player.walk.loopMode 2
			scoreboard players set @s aj.player.start_walk.frame 0
			scoreboard players set @s aj.player.start_walk.loopMode 1
			scoreboard players set @s aj.player.idle.frame 0
			scoreboard players set @s aj.player.idle.loopMode 2
			scoreboard players set @s aj.player.end_walk.frame 0
			scoreboard players set @s aj.player.end_walk.loopMode 1
			scoreboard players set @s aj.player.animating 0
		}
		# Assert animation flags
		function player:assert_animation_flags
	}
	function violet {
		# Summon Root Entity
		summon minecraft:marker ~ ~ ~ {Tags:['new','aj.player','aj.player.root']}
		# Execute as summoned root
		execute as @e[type=minecraft:marker,tag=aj.player.root,tag=new,distance=..1,limit=1] rotated ~ 0 run {
			# Copy the execution position and rotation onto the root
			tp @s ~ ~ ~ ~ ~
			# Get an ID for this rig
			execute store result score @s aj.id run scoreboard players add .aj.last_id aj.i 1
			# Execute at updated location
			execute at @s run {
				# Summon all bone entities
				summon minecraft:area_effect_cloud ^0 ^-1.20987 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.body'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.body','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:43}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^0 ^-0.50675 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.head'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.head','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:44}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^-0.29297 ^-0.62394 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightarm'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightarm','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:45}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^0.29297 ^-0.62394 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftarm'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftarm','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:46}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^0.11133 ^-1.20987 ^-0.00586 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftleg'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftleg','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:47}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^-0.11133 ^-1.20987 ^-0.00586 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightleg'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightleg','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:48}}],Pose:{Head:[0f,0f,0f]}}]}
				# Update rotation and ID of bone entities to match the root entity
				execute as @e[type=#player:bone_entities,tag=aj.player,tag=new,distance=..4.365] positioned as @s run {
					scoreboard players operation @s aj.id = .aj.last_id aj.i
					tp @s ~ ~ ~ ~ ~
					tag @s remove new
				}
			}
			tag @s remove new
			# Set all animation modes to configured default
			scoreboard players set @s aj.player.floss.frame 0
			scoreboard players set @s aj.player.floss.loopMode 2
			scoreboard players set @s aj.player.walk.frame 0
			scoreboard players set @s aj.player.walk.loopMode 2
			scoreboard players set @s aj.player.start_walk.frame 0
			scoreboard players set @s aj.player.start_walk.loopMode 1
			scoreboard players set @s aj.player.idle.frame 0
			scoreboard players set @s aj.player.idle.loopMode 2
			scoreboard players set @s aj.player.end_walk.frame 0
			scoreboard players set @s aj.player.end_walk.loopMode 1
			scoreboard players set @s aj.player.animating 0
		}
		# Assert animation flags
		function player:assert_animation_flags
	}
	function stuarta {
		# Summon Root Entity
		summon minecraft:marker ~ ~ ~ {Tags:['new','aj.player','aj.player.root']}
		# Execute as summoned root
		execute as @e[type=minecraft:marker,tag=aj.player.root,tag=new,distance=..1,limit=1] rotated ~ 0 run {
			# Copy the execution position and rotation onto the root
			tp @s ~ ~ ~ ~ ~
			# Get an ID for this rig
			execute store result score @s aj.id run scoreboard players add .aj.last_id aj.i 1
			# Execute at updated location
			execute at @s run {
				# Summon all bone entities
				summon minecraft:area_effect_cloud ^0 ^-1.20987 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.body'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.body','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:49}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^0 ^-0.50675 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.head'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.head','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:50}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^-0.29297 ^-0.62394 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightarm'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightarm','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:51}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^0.29297 ^-0.62394 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftarm'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftarm','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:52}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^0.11133 ^-1.20987 ^-0.00586 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftleg'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftleg','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:53}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^-0.11133 ^-1.20987 ^-0.00586 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightleg'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightleg','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:54}}],Pose:{Head:[0f,0f,0f]}}]}
				# Update rotation and ID of bone entities to match the root entity
				execute as @e[type=#player:bone_entities,tag=aj.player,tag=new,distance=..4.365] positioned as @s run {
					scoreboard players operation @s aj.id = .aj.last_id aj.i
					tp @s ~ ~ ~ ~ ~
					tag @s remove new
				}
			}
			tag @s remove new
			# Set all animation modes to configured default
			scoreboard players set @s aj.player.floss.frame 0
			scoreboard players set @s aj.player.floss.loopMode 2
			scoreboard players set @s aj.player.walk.frame 0
			scoreboard players set @s aj.player.walk.loopMode 2
			scoreboard players set @s aj.player.start_walk.frame 0
			scoreboard players set @s aj.player.start_walk.loopMode 1
			scoreboard players set @s aj.player.idle.frame 0
			scoreboard players set @s aj.player.idle.loopMode 2
			scoreboard players set @s aj.player.end_walk.frame 0
			scoreboard players set @s aj.player.end_walk.loopMode 1
			scoreboard players set @s aj.player.animating 0
		}
		# Assert animation flags
		function player:assert_animation_flags
	}
	function cheesierpasta {
		# Summon Root Entity
		summon minecraft:marker ~ ~ ~ {Tags:['new','aj.player','aj.player.root']}
		# Execute as summoned root
		execute as @e[type=minecraft:marker,tag=aj.player.root,tag=new,distance=..1,limit=1] rotated ~ 0 run {
			# Copy the execution position and rotation onto the root
			tp @s ~ ~ ~ ~ ~
			# Get an ID for this rig
			execute store result score @s aj.id run scoreboard players add .aj.last_id aj.i 1
			# Execute at updated location
			execute at @s run {
				# Summon all bone entities
				summon minecraft:area_effect_cloud ^0 ^-1.20987 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.body'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.body','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:55}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^0 ^-0.50675 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.head'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.head','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:56}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^-0.29297 ^-0.62394 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightarm'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightarm','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:57}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^0.29297 ^-0.62394 ^0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftarm'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftarm','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:58}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^0.11133 ^-1.20987 ^-0.00586 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftleg'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.leftleg','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:59}}],Pose:{Head:[0f,0f,0f]}}]}
				summon minecraft:area_effect_cloud ^-0.11133 ^-1.20987 ^-0.00586 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightleg'],Passengers:[{id:'minecraft:armor_stand',Invisible:true,Marker:false,NoGravity:true,DisabledSlots:4144959,Tags:['new','aj.player','aj.player.bone','aj.player.bone.rightleg','aj.player.bone_display'],ArmorItems:[{},{},{},{id:'minecraft:white_dye',Count:1b,tag:{CustomModelData:60}}],Pose:{Head:[0f,0f,0f]}}]}
				# Update rotation and ID of bone entities to match the root entity
				execute as @e[type=#player:bone_entities,tag=aj.player,tag=new,distance=..4.365] positioned as @s run {
					scoreboard players operation @s aj.id = .aj.last_id aj.i
					tp @s ~ ~ ~ ~ ~
					tag @s remove new
				}
			}
			tag @s remove new
			# Set all animation modes to configured default
			scoreboard players set @s aj.player.floss.frame 0
			scoreboard players set @s aj.player.floss.loopMode 2
			scoreboard players set @s aj.player.walk.frame 0
			scoreboard players set @s aj.player.walk.loopMode 2
			scoreboard players set @s aj.player.start_walk.frame 0
			scoreboard players set @s aj.player.start_walk.loopMode 1
			scoreboard players set @s aj.player.idle.frame 0
			scoreboard players set @s aj.player.idle.loopMode 2
			scoreboard players set @s aj.player.end_walk.frame 0
			scoreboard players set @s aj.player.end_walk.loopMode 1
			scoreboard players set @s aj.player.animating 0
		}
		# Assert animation flags
		function player:assert_animation_flags
	}
}
dir set_variant {
	function snavesutit {
		execute (if entity @s[tag=aj.player.root] at @s) {
			scoreboard players operation .this aj.id = @s aj.id
			execute as @e[type=minecraft:armor_stand,tag=aj.player.bone,distance=..4.365] if score @s aj.id = .this aj.id run {
				data modify entity @s[tag=aj.player.bone.body] ArmorItems[-1].tag.CustomModelData set value 7
				data modify entity @s[tag=aj.player.bone.head] ArmorItems[-1].tag.CustomModelData set value 8
				data modify entity @s[tag=aj.player.bone.rightarm] ArmorItems[-1].tag.CustomModelData set value 9
				data modify entity @s[tag=aj.player.bone.leftarm] ArmorItems[-1].tag.CustomModelData set value 10
				data modify entity @s[tag=aj.player.bone.leftleg] ArmorItems[-1].tag.CustomModelData set value 11
				data modify entity @s[tag=aj.player.bone.rightleg] ArmorItems[-1].tag.CustomModelData set value 12
			}
		} else {
			tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:set_variant/snavesutit ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
		}
	}
	function steve {
		execute (if entity @s[tag=aj.player.root] at @s) {
			scoreboard players operation .this aj.id = @s aj.id
			execute as @e[type=minecraft:armor_stand,tag=aj.player.bone,distance=..4.365] if score @s aj.id = .this aj.id run {
				data modify entity @s[tag=aj.player.bone.body] ArmorItems[-1].tag.CustomModelData set value 13
				data modify entity @s[tag=aj.player.bone.head] ArmorItems[-1].tag.CustomModelData set value 14
				data modify entity @s[tag=aj.player.bone.rightarm] ArmorItems[-1].tag.CustomModelData set value 15
				data modify entity @s[tag=aj.player.bone.leftarm] ArmorItems[-1].tag.CustomModelData set value 16
				data modify entity @s[tag=aj.player.bone.leftleg] ArmorItems[-1].tag.CustomModelData set value 17
				data modify entity @s[tag=aj.player.bone.rightleg] ArmorItems[-1].tag.CustomModelData set value 18
			}
		} else {
			tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:set_variant/steve ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
		}
	}
	function alex {
		execute (if entity @s[tag=aj.player.root] at @s) {
			scoreboard players operation .this aj.id = @s aj.id
			execute as @e[type=minecraft:armor_stand,tag=aj.player.bone,distance=..4.365] if score @s aj.id = .this aj.id run {
				data modify entity @s[tag=aj.player.bone.body] ArmorItems[-1].tag.CustomModelData set value 19
				data modify entity @s[tag=aj.player.bone.head] ArmorItems[-1].tag.CustomModelData set value 20
				data modify entity @s[tag=aj.player.bone.rightarm] ArmorItems[-1].tag.CustomModelData set value 21
				data modify entity @s[tag=aj.player.bone.leftarm] ArmorItems[-1].tag.CustomModelData set value 22
				data modify entity @s[tag=aj.player.bone.leftleg] ArmorItems[-1].tag.CustomModelData set value 23
				data modify entity @s[tag=aj.player.bone.rightleg] ArmorItems[-1].tag.CustomModelData set value 24
			}
		} else {
			tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:set_variant/alex ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
		}
	}
	function fetchbot {
		execute (if entity @s[tag=aj.player.root] at @s) {
			scoreboard players operation .this aj.id = @s aj.id
			execute as @e[type=minecraft:armor_stand,tag=aj.player.bone,distance=..4.365] if score @s aj.id = .this aj.id run {
				data modify entity @s[tag=aj.player.bone.body] ArmorItems[-1].tag.CustomModelData set value 25
				data modify entity @s[tag=aj.player.bone.head] ArmorItems[-1].tag.CustomModelData set value 26
				data modify entity @s[tag=aj.player.bone.rightarm] ArmorItems[-1].tag.CustomModelData set value 27
				data modify entity @s[tag=aj.player.bone.leftarm] ArmorItems[-1].tag.CustomModelData set value 28
				data modify entity @s[tag=aj.player.bone.leftleg] ArmorItems[-1].tag.CustomModelData set value 29
				data modify entity @s[tag=aj.player.bone.rightleg] ArmorItems[-1].tag.CustomModelData set value 30
			}
		} else {
			tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:set_variant/fetchbot ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
		}
	}
	function verylyfeless {
		execute (if entity @s[tag=aj.player.root] at @s) {
			scoreboard players operation .this aj.id = @s aj.id
			execute as @e[type=minecraft:armor_stand,tag=aj.player.bone,distance=..4.365] if score @s aj.id = .this aj.id run {
				data modify entity @s[tag=aj.player.bone.body] ArmorItems[-1].tag.CustomModelData set value 31
				data modify entity @s[tag=aj.player.bone.head] ArmorItems[-1].tag.CustomModelData set value 32
				data modify entity @s[tag=aj.player.bone.rightarm] ArmorItems[-1].tag.CustomModelData set value 33
				data modify entity @s[tag=aj.player.bone.leftarm] ArmorItems[-1].tag.CustomModelData set value 34
				data modify entity @s[tag=aj.player.bone.leftleg] ArmorItems[-1].tag.CustomModelData set value 35
				data modify entity @s[tag=aj.player.bone.rightleg] ArmorItems[-1].tag.CustomModelData set value 36
			}
		} else {
			tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:set_variant/verylyfeless ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
		}
	}
	function nerdrope {
		execute (if entity @s[tag=aj.player.root] at @s) {
			scoreboard players operation .this aj.id = @s aj.id
			execute as @e[type=minecraft:armor_stand,tag=aj.player.bone,distance=..4.365] if score @s aj.id = .this aj.id run {
				data modify entity @s[tag=aj.player.bone.body] ArmorItems[-1].tag.CustomModelData set value 37
				data modify entity @s[tag=aj.player.bone.head] ArmorItems[-1].tag.CustomModelData set value 38
				data modify entity @s[tag=aj.player.bone.rightarm] ArmorItems[-1].tag.CustomModelData set value 39
				data modify entity @s[tag=aj.player.bone.leftarm] ArmorItems[-1].tag.CustomModelData set value 40
				data modify entity @s[tag=aj.player.bone.leftleg] ArmorItems[-1].tag.CustomModelData set value 41
				data modify entity @s[tag=aj.player.bone.rightleg] ArmorItems[-1].tag.CustomModelData set value 42
			}
		} else {
			tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:set_variant/nerdrope ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
		}
	}
	function violet {
		execute (if entity @s[tag=aj.player.root] at @s) {
			scoreboard players operation .this aj.id = @s aj.id
			execute as @e[type=minecraft:armor_stand,tag=aj.player.bone,distance=..4.365] if score @s aj.id = .this aj.id run {
				data modify entity @s[tag=aj.player.bone.body] ArmorItems[-1].tag.CustomModelData set value 43
				data modify entity @s[tag=aj.player.bone.head] ArmorItems[-1].tag.CustomModelData set value 44
				data modify entity @s[tag=aj.player.bone.rightarm] ArmorItems[-1].tag.CustomModelData set value 45
				data modify entity @s[tag=aj.player.bone.leftarm] ArmorItems[-1].tag.CustomModelData set value 46
				data modify entity @s[tag=aj.player.bone.leftleg] ArmorItems[-1].tag.CustomModelData set value 47
				data modify entity @s[tag=aj.player.bone.rightleg] ArmorItems[-1].tag.CustomModelData set value 48
			}
		} else {
			tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:set_variant/violet ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
		}
	}
	function stuarta {
		execute (if entity @s[tag=aj.player.root] at @s) {
			scoreboard players operation .this aj.id = @s aj.id
			execute as @e[type=minecraft:armor_stand,tag=aj.player.bone,distance=..4.365] if score @s aj.id = .this aj.id run {
				data modify entity @s[tag=aj.player.bone.body] ArmorItems[-1].tag.CustomModelData set value 49
				data modify entity @s[tag=aj.player.bone.head] ArmorItems[-1].tag.CustomModelData set value 50
				data modify entity @s[tag=aj.player.bone.rightarm] ArmorItems[-1].tag.CustomModelData set value 51
				data modify entity @s[tag=aj.player.bone.leftarm] ArmorItems[-1].tag.CustomModelData set value 52
				data modify entity @s[tag=aj.player.bone.leftleg] ArmorItems[-1].tag.CustomModelData set value 53
				data modify entity @s[tag=aj.player.bone.rightleg] ArmorItems[-1].tag.CustomModelData set value 54
			}
		} else {
			tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:set_variant/stuarta ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
		}
	}
	function cheesierpasta {
		execute (if entity @s[tag=aj.player.root] at @s) {
			scoreboard players operation .this aj.id = @s aj.id
			execute as @e[type=minecraft:armor_stand,tag=aj.player.bone,distance=..4.365] if score @s aj.id = .this aj.id run {
				data modify entity @s[tag=aj.player.bone.body] ArmorItems[-1].tag.CustomModelData set value 55
				data modify entity @s[tag=aj.player.bone.head] ArmorItems[-1].tag.CustomModelData set value 56
				data modify entity @s[tag=aj.player.bone.rightarm] ArmorItems[-1].tag.CustomModelData set value 57
				data modify entity @s[tag=aj.player.bone.leftarm] ArmorItems[-1].tag.CustomModelData set value 58
				data modify entity @s[tag=aj.player.bone.leftleg] ArmorItems[-1].tag.CustomModelData set value 59
				data modify entity @s[tag=aj.player.bone.rightleg] ArmorItems[-1].tag.CustomModelData set value 60
			}
		} else {
			tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:set_variant/cheesierpasta ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
		}
	}
}
# Resets the model to it's initial summon position/rotation and stops all active animations
function reset {
	# Make sure this function has been ran as the root entity
	execute(if entity @s[tag=aj.player.root] at @s rotated ~ 0) {
		# Remove all animation tags and reset animation time
		tag @s remove aj.player.anim.floss
		scoreboard players set @s aj.player.floss.loopMode 2
		tag @s remove aj.player.anim.walk
		scoreboard players set @s aj.player.walk.loopMode 2
		tag @s remove aj.player.anim.start_walk
		scoreboard players set @s aj.player.start_walk.loopMode 1
		tag @s remove aj.player.anim.idle
		scoreboard players set @s aj.player.idle.loopMode 2
		tag @s remove aj.player.anim.end_walk
		scoreboard players set @s aj.player.end_walk.loopMode 1
		scoreboard players operation .this aj.id = @s aj.id
		execute as @e[type=minecraft:area_effect_cloud,tag=aj.player.bone,distance=..4.365] if score @s aj.id = .this aj.id run {
			tp @s[tag=aj.player.bone.body] ^0 ^-1.20987 ^0
			tp @s[tag=aj.player.bone.head] ^0 ^-0.50675 ^0
			tp @s[tag=aj.player.bone.rightarm] ^-0.29297 ^-0.62394 ^0
			tp @s[tag=aj.player.bone.leftarm] ^0.29297 ^-0.62394 ^0
			tp @s[tag=aj.player.bone.leftleg] ^0.11133 ^-1.20987 ^-0.00586
			tp @s[tag=aj.player.bone.rightleg] ^-0.11133 ^-1.20987 ^-0.00586
			execute store result score .calc aj.i run data get entity @s Air
			execute store result entity @s Air short 1 run scoreboard players add .calc aj.i 2
		}
		execute as @e[type=minecraft:armor_stand,tag=aj.player.bone,distance=..4.365] if score @s aj.id = .this aj.id run {
			data modify entity @s[tag=aj.player.bone.body] Pose.Head set value [0f,0f,0f]
			data modify entity @s[tag=aj.player.bone.head] Pose.Head set value [0f,0f,0f]
			data modify entity @s[tag=aj.player.bone.rightarm] Pose.Head set value [0f,0f,0f]
			data modify entity @s[tag=aj.player.bone.leftarm] Pose.Head set value [0f,0f,0f]
			data modify entity @s[tag=aj.player.bone.leftleg] Pose.Head set value [0f,0f,0f]
			data modify entity @s[tag=aj.player.bone.rightleg] Pose.Head set value [0f,0f,0f]
			tp @s ~ ~ ~ ~ ~
		}
		# If this entity is not the root
	} else {
		tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:reset ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
	}
}
function move {
	# Make sure this function has been ran as the root entity
	execute(if entity @s[tag=aj.player.root] rotated ~ 0) {
		tp @s ~ ~ ~ ~ ~
		scoreboard players operation .this aj.id = @s aj.id
		scoreboard players operation .this aj.player.floss.frame = @s aj.player.floss.frame
		scoreboard players operation .this aj.player.walk.frame = @s aj.player.walk.frame
		scoreboard players operation .this aj.player.start_walk.frame = @s aj.player.start_walk.frame
		scoreboard players operation .this aj.player.idle.frame = @s aj.player.idle.frame
		scoreboard players operation .this aj.player.end_walk.frame = @s aj.player.end_walk.frame
		# Split based on animation name
		scoreboard players set # aj.i 0
		execute if entity @s[tag=aj.player.anim.floss] run {
			scoreboard players set # aj.i 1
			# Select bone entities
			execute at @s as @e[type=#player:bone_entities,tag=aj.player.bone] if score @s aj.id = .this aj.id run {
				# Split based on bone entity type
				execute if entity @s[type=minecraft:area_effect_cloud] run {
					# Run root animation frame tree
					function player:animations/floss/tree/root_bone_name
					execute store result score .calc aj.i run data get entity @s Air
					execute store result entity @s Air short 1 run scoreboard players add .calc aj.i 2
				}
				execute if entity @s[type=minecraft:armor_stand] run tp @s ~ ~ ~ ~ ~
			}
		}
		execute if entity @s[tag=aj.player.anim.walk] run {
			scoreboard players set # aj.i 1
			# Select bone entities
			execute at @s as @e[type=#player:bone_entities,tag=aj.player.bone] if score @s aj.id = .this aj.id run {
				# Split based on bone entity type
				execute if entity @s[type=minecraft:area_effect_cloud] run {
					# Run root animation frame tree
					function player:animations/walk/tree/root_bone_name
					execute store result score .calc aj.i run data get entity @s Air
					execute store result entity @s Air short 1 run scoreboard players add .calc aj.i 2
				}
				execute if entity @s[type=minecraft:armor_stand] run tp @s ~ ~ ~ ~ ~
			}
		}
		execute if entity @s[tag=aj.player.anim.start_walk] run {
			scoreboard players set # aj.i 1
			# Select bone entities
			execute at @s as @e[type=#player:bone_entities,tag=aj.player.bone] if score @s aj.id = .this aj.id run {
				# Split based on bone entity type
				execute if entity @s[type=minecraft:area_effect_cloud] run {
					# Run root animation frame tree
					function player:animations/start_walk/tree/root_bone_name
					execute store result score .calc aj.i run data get entity @s Air
					execute store result entity @s Air short 1 run scoreboard players add .calc aj.i 2
				}
				execute if entity @s[type=minecraft:armor_stand] run tp @s ~ ~ ~ ~ ~
			}
		}
		execute if entity @s[tag=aj.player.anim.idle] run {
			scoreboard players set # aj.i 1
			# Select bone entities
			execute at @s as @e[type=#player:bone_entities,tag=aj.player.bone] if score @s aj.id = .this aj.id run {
				# Split based on bone entity type
				execute if entity @s[type=minecraft:area_effect_cloud] run {
					# Run root animation frame tree
					function player:animations/idle/tree/root_bone_name
					execute store result score .calc aj.i run data get entity @s Air
					execute store result entity @s Air short 1 run scoreboard players add .calc aj.i 2
				}
				execute if entity @s[type=minecraft:armor_stand] run tp @s ~ ~ ~ ~ ~
			}
		}
		execute if entity @s[tag=aj.player.anim.end_walk] run {
			scoreboard players set # aj.i 1
			# Select bone entities
			execute at @s as @e[type=#player:bone_entities,tag=aj.player.bone] if score @s aj.id = .this aj.id run {
				# Split based on bone entity type
				execute if entity @s[type=minecraft:area_effect_cloud] run {
					# Run root animation frame tree
					function player:animations/end_walk/tree/root_bone_name
					execute store result score .calc aj.i run data get entity @s Air
					execute store result entity @s Air short 1 run scoreboard players add .calc aj.i 2
				}
				execute if entity @s[type=minecraft:armor_stand] run tp @s ~ ~ ~ ~ ~
			}
		}
		execute if score # aj.i matches 0 run {
			execute at @s as @e[type=minecraft:area_effect_cloud,tag=aj.player.bone] if score @s aj.id = .this aj.id run tp @s ~ ~ ~
			function player:reset
		}
		# If this entity is not the root
	} else {
		tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:move ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
	}
}
function animation_loop {
	# Schedule clock
	schedule function player:animation_loop 1t
	# Set anim_loop active flag to true
	scoreboard players set .aj.anim_loop aj.player.animating 1
	# Reset animating flag (Used internally to check if any animations have ticked during this tick)
	scoreboard players set .aj.animation aj.player.animating 0
	# Run animations that are active on the entity
	execute as @e[type=minecraft:marker,tag=aj.player.root] run{
		execute if entity @s[tag=aj.player.anim.floss] at @s run function player:animations/floss/next_frame
		execute if entity @s[tag=aj.player.anim.walk] at @s run function player:animations/walk/next_frame
		execute if entity @s[tag=aj.player.anim.start_walk] at @s run function player:animations/start_walk/next_frame
		execute if entity @s[tag=aj.player.anim.idle] at @s run function player:animations/idle/next_frame
		execute if entity @s[tag=aj.player.anim.end_walk] at @s run function player:animations/end_walk/next_frame
		scoreboard players operation @s aj.player.animating = .aj.animation aj.player.animating
	}
	# Stop the anim_loop clock if no models are animating
	execute if score .aj.animation aj.player.animating matches 0 run {
		# Stop anim_loop shedule clock
		schedule clear player:animation_loop
		# Set anim_loop active flag to false
		scoreboard players set .aj.anim_loop aj.player.animating 0
	}
}
dir animations {
	dir floss {
		# Starts the animation from the first frame
		function play {
			# Make sure this function has been ran as the root entity
			execute(if entity @s[tag=aj.player.root] at @s) {
				# Add animation tag
				tag @s add aj.player.anim.floss
				# Reset animation time
				execute if score .aj.player.framerate aj.i matches ..-1 run scoreboard players set @s aj.player.floss.frame 31
				execute if score .aj.player.framerate aj.i matches 1.. run scoreboard players set @s aj.player.floss.frame 0
				# Assert that .noScripts is tracked properly
				scoreboard players add .noScripts aj.i 0
				# Start the animation loop if not running
				execute if score .aj.anim_loop aj.player.animating matches 0 run function player:animation_loop
				# If this entity is not the root
			} else {
				tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:animations/floss/play ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
			}
		}
		# Stops the animation and resets to first frame
		function stop {
			# Make sure this function has been ran as the root entity
			execute(if entity @s[tag=aj.player.root] at @s) {
				# Add animation tag
				tag @s remove aj.player.anim.floss
				# Reset animation time
				scoreboard players set @s aj.player.floss.frame 0
				# load initial animation frame without running scripts
				scoreboard players operation .oldValue aj.i = .noScripts aj.i
				scoreboard players set .noScripts aj.i 1
				function player:animations/floss/next_frame
				scoreboard players operation .noScripts aj.i = .oldValue aj.i
				# Reset animation time
				scoreboard players set @s aj.player.floss.frame 0
				# If this entity is not the root
			} else {
				tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:animations/floss/stop ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
			}
		}
		# Pauses the animation on the current frame
		function pause {
			# Make sure this function has been ran as the root entity
			execute(if entity @s[tag=aj.player.root] at @s) {
				# Remove animation tag
				tag @s remove aj.player.anim.floss
				# If this entity is not the root
			} else {
				tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:animations/floss/pause ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
			}
		}
		# Resumes the animation from the current frame
		function resume {
			# Make sure this function has been ran as the root entity
			execute(if entity @s[tag=aj.player.root]) {
				# Remove animation tag
				tag @s add aj.player.anim.floss
				# Start the animation loop
				execute if score .aj.anim_loop aj.player.animating matches 0 run function player:animation_loop
				# If this entity is not the root
			} else {
				tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:animations/floss/resume ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
			}
		}
		# Plays the next frame in the animation
		function next_frame {
			scoreboard players operation .this aj.id = @s aj.id
			scoreboard players operation .this aj.player.floss.frame = @s aj.player.floss.frame
			execute rotated ~ 0 as @e[type=#player:bone_entities,tag=aj.player.bone,distance=..2.5060000000000002] if score @s aj.id = .this aj.id run {
				name tree/trunk
				# Bone Roots
				execute if entity @s[type=minecraft:area_effect_cloud] run {
					name tree/root_bone_name
					# Position
					execute if entity @s[tag=aj.player.bone.head] run {
						name tree/head_pos_top
						execute if score .this aj.player.floss.frame matches 0..30 run {
							name tree/head_pos_0-30
							execute if score .this aj.player.floss.frame matches 0..7 run {
								name tree/head_pos_0-7
								execute if score .this aj.player.floss.frame matches 0 run tp @s ^-0.08369 ^-0.52211 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 1 run tp @s ^-0.05597 ^-0.51354 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 2 run tp @s ^-0.01288 ^-0.50711 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 3 run tp @s ^0.03316 ^-0.50912 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 4 run tp @s ^0.06924 ^-0.51719 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 5 run tp @s ^0.08369 ^-0.52211 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 6 run tp @s ^0.0666 ^-0.5164 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 7 run tp @s ^0.02506 ^-0.5081 ^0 ~ ~
							}
							execute if score .this aj.player.floss.frame matches 8..15 run {
								name tree/head_pos_8-15
								execute if score .this aj.player.floss.frame matches 8 run tp @s ^-0.02506 ^-0.5081 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 9 run tp @s ^-0.0666 ^-0.5164 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 10 run tp @s ^-0.08369 ^-0.52211 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 11 run tp @s ^-0.0666 ^-0.5164 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 12 run tp @s ^-0.02506 ^-0.5081 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 13 run tp @s ^0.02506 ^-0.5081 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 14 run tp @s ^0.0666 ^-0.5164 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 15 run tp @s ^0.08369 ^-0.52211 ^0 ~ ~
							}
							execute if score .this aj.player.floss.frame matches 16..23 run {
								name tree/head_pos_16-23
								execute if score .this aj.player.floss.frame matches 16 run tp @s ^0.0666 ^-0.5164 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 17 run tp @s ^0.02506 ^-0.5081 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 18 run tp @s ^-0.02506 ^-0.5081 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 19 run tp @s ^-0.0666 ^-0.5164 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 20 run tp @s ^-0.08369 ^-0.52211 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 21 run tp @s ^-0.0666 ^-0.5164 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 22 run tp @s ^-0.02506 ^-0.5081 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 23 run tp @s ^0.02506 ^-0.5081 ^0 ~ ~
							}
							execute if score .this aj.player.floss.frame matches 24..30 run {
								name tree/head_pos_24-30
								execute if score .this aj.player.floss.frame matches 24 run tp @s ^0.0666 ^-0.5164 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 25 run tp @s ^0.08369 ^-0.52211 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 26 run tp @s ^0.06924 ^-0.51719 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 27 run tp @s ^0.03316 ^-0.50912 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 28 run tp @s ^-0.01288 ^-0.50711 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 29 run tp @s ^-0.05597 ^-0.51354 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 30 run tp @s ^-0.08369 ^-0.52211 ^0 ~ ~
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.body] run {
						name tree/body_pos_top
						execute if score .this aj.player.floss.frame matches 0..30 run {
							name tree/body_pos_0-30
							execute if score .this aj.player.floss.frame matches 0..7 run {
								name tree/body_pos_0-7
								execute if score .this aj.player.floss.frame matches 0 run tp @s ^0.0625 ^-1.20987 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 1 run tp @s ^0.0415 ^-1.20987 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 2 run tp @s ^0.0095 ^-1.20987 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 3 run tp @s ^-0.0245 ^-1.20987 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 4 run tp @s ^-0.0515 ^-1.20987 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 5 run tp @s ^-0.0625 ^-1.20987 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 6 run tp @s ^-0.0495 ^-1.20987 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 7 run tp @s ^-0.0185 ^-1.20987 ^0 ~ ~
							}
							execute if score .this aj.player.floss.frame matches 8..15 run {
								name tree/body_pos_8-15
								execute if score .this aj.player.floss.frame matches 8 run tp @s ^0.0185 ^-1.20987 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 9 run tp @s ^0.0495 ^-1.20987 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 10 run tp @s ^0.0625 ^-1.20987 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 11 run tp @s ^0.0495 ^-1.20987 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 12 run tp @s ^0.0185 ^-1.20987 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 13 run tp @s ^-0.0185 ^-1.20987 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 14 run tp @s ^-0.0495 ^-1.20987 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 15 run tp @s ^-0.0625 ^-1.20987 ^0 ~ ~
							}
							execute if score .this aj.player.floss.frame matches 16..23 run {
								name tree/body_pos_16-23
								execute if score .this aj.player.floss.frame matches 16 run tp @s ^-0.0495 ^-1.20987 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 17 run tp @s ^-0.0185 ^-1.20987 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 18 run tp @s ^0.0185 ^-1.20987 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 19 run tp @s ^0.0495 ^-1.20987 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 20 run tp @s ^0.0625 ^-1.20987 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 21 run tp @s ^0.0495 ^-1.20987 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 22 run tp @s ^0.0185 ^-1.20987 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 23 run tp @s ^-0.0185 ^-1.20987 ^0 ~ ~
							}
							execute if score .this aj.player.floss.frame matches 24..30 run {
								name tree/body_pos_24-30
								execute if score .this aj.player.floss.frame matches 24 run tp @s ^-0.0495 ^-1.20987 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 25 run tp @s ^-0.0625 ^-1.20987 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 26 run tp @s ^-0.0515 ^-1.20987 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 27 run tp @s ^-0.0245 ^-1.20987 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 28 run tp @s ^0.0095 ^-1.20987 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 29 run tp @s ^0.0415 ^-1.20987 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 30 run tp @s ^0.0625 ^-1.20987 ^0 ~ ~
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.rightarm] run {
						name tree/rightarm_pos_top
						execute if score .this aj.player.floss.frame matches 0..30 run {
							name tree/rightarm_pos_0-30
							execute if score .this aj.player.floss.frame matches 0..7 run {
								name tree/rightarm_pos_0-7
								execute if score .this aj.player.floss.frame matches 0 run tp @s ^-0.34589 ^-0.69765 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 1 run tp @s ^-0.32986 ^-0.67021 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 2 run tp @s ^-0.30197 ^-0.63356 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 3 run tp @s ^-0.26843 ^-0.60189 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 4 run tp @s ^-0.2395 ^-0.58233 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 5 run tp @s ^-0.22724 ^-0.57583 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 6 run tp @s ^-0.2417 ^-0.58361 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 7 run tp @s ^-0.2746 ^-0.60691 ^0 ~ ~
							}
							execute if score .this aj.player.floss.frame matches 8..15 run {
								name tree/rightarm_pos_8-15
								execute if score .this aj.player.floss.frame matches 8 run tp @s ^-0.31021 ^-0.64321 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 9 run tp @s ^-0.3362 ^-0.68035 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 10 run tp @s ^-0.34589 ^-0.69765 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 11 run tp @s ^-0.3362 ^-0.68035 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 12 run tp @s ^-0.31021 ^-0.64321 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 13 run tp @s ^-0.2746 ^-0.60691 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 14 run tp @s ^-0.2417 ^-0.58361 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 15 run tp @s ^-0.22724 ^-0.57583 ^0 ~ ~
							}
							execute if score .this aj.player.floss.frame matches 16..23 run {
								name tree/rightarm_pos_16-23
								execute if score .this aj.player.floss.frame matches 16 run tp @s ^-0.2417 ^-0.58361 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 17 run tp @s ^-0.2746 ^-0.60691 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 18 run tp @s ^-0.31021 ^-0.64321 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 19 run tp @s ^-0.3362 ^-0.68035 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 20 run tp @s ^-0.34589 ^-0.69765 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 21 run tp @s ^-0.3362 ^-0.68035 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 22 run tp @s ^-0.31021 ^-0.64321 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 23 run tp @s ^-0.2746 ^-0.60691 ^0 ~ ~
							}
							execute if score .this aj.player.floss.frame matches 24..30 run {
								name tree/rightarm_pos_24-30
								execute if score .this aj.player.floss.frame matches 24 run tp @s ^-0.2417 ^-0.58361 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 25 run tp @s ^-0.22724 ^-0.57583 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 26 run tp @s ^-0.2395 ^-0.58233 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 27 run tp @s ^-0.26843 ^-0.60189 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 28 run tp @s ^-0.30197 ^-0.63356 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 29 run tp @s ^-0.32986 ^-0.67021 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 30 run tp @s ^-0.34589 ^-0.69765 ^0 ~ ~
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.leftarm] run {
						name tree/leftarm_pos_top
						execute if score .this aj.player.floss.frame matches 0..30 run {
							name tree/leftarm_pos_0-30
							execute if score .this aj.player.floss.frame matches 0..7 run {
								name tree/leftarm_pos_0-7
								execute if score .this aj.player.floss.frame matches 0 run tp @s ^0.22724 ^-0.57583 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 1 run tp @s ^0.25042 ^-0.58898 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 2 run tp @s ^0.28367 ^-0.61491 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 3 run tp @s ^0.31553 ^-0.64994 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 4 run tp @s ^0.33774 ^-0.68295 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 5 run tp @s ^0.34589 ^-0.69765 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 6 run tp @s ^0.3362 ^-0.68035 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 7 run tp @s ^0.31021 ^-0.64321 ^0 ~ ~
							}
							execute if score .this aj.player.floss.frame matches 8..15 run {
								name tree/leftarm_pos_8-15
								execute if score .this aj.player.floss.frame matches 8 run tp @s ^0.2746 ^-0.60691 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 9 run tp @s ^0.2417 ^-0.58361 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 10 run tp @s ^0.22724 ^-0.57583 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 11 run tp @s ^0.2417 ^-0.58361 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 12 run tp @s ^0.2746 ^-0.60691 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 13 run tp @s ^0.31021 ^-0.64321 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 14 run tp @s ^0.3362 ^-0.68035 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 15 run tp @s ^0.34589 ^-0.69765 ^0 ~ ~
							}
							execute if score .this aj.player.floss.frame matches 16..23 run {
								name tree/leftarm_pos_16-23
								execute if score .this aj.player.floss.frame matches 16 run tp @s ^0.3362 ^-0.68035 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 17 run tp @s ^0.31021 ^-0.64321 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 18 run tp @s ^0.2746 ^-0.60691 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 19 run tp @s ^0.2417 ^-0.58361 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 20 run tp @s ^0.22724 ^-0.57583 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 21 run tp @s ^0.2417 ^-0.58361 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 22 run tp @s ^0.2746 ^-0.60691 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 23 run tp @s ^0.31021 ^-0.64321 ^0 ~ ~
							}
							execute if score .this aj.player.floss.frame matches 24..30 run {
								name tree/leftarm_pos_24-30
								execute if score .this aj.player.floss.frame matches 24 run tp @s ^0.3362 ^-0.68035 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 25 run tp @s ^0.34589 ^-0.69765 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 26 run tp @s ^0.33774 ^-0.68295 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 27 run tp @s ^0.31553 ^-0.64994 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 28 run tp @s ^0.28367 ^-0.61491 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 29 run tp @s ^0.25042 ^-0.58898 ^0 ~ ~
								execute if score .this aj.player.floss.frame matches 30 run tp @s ^0.22724 ^-0.57583 ^0 ~ ~
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.rightleg] run {
						name tree/rightleg_pos_top
						execute if score .this aj.player.floss.frame matches 0..30 run {
							name tree/rightleg_pos_0-30
							execute if score .this aj.player.floss.frame matches 0..7 run {
								name tree/rightleg_pos_0-7
								execute if score .this aj.player.floss.frame matches 0 run tp @s ^-0.04883 ^-1.21612 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 1 run tp @s ^-0.06983 ^-1.21507 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 2 run tp @s ^-0.10183 ^-1.21347 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 3 run tp @s ^-0.13583 ^-1.21177 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 4 run tp @s ^-0.16283 ^-1.21042 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 5 run tp @s ^-0.17383 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 6 run tp @s ^-0.16083 ^-1.21052 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 7 run tp @s ^-0.12983 ^-1.21207 ^-0.00586 ~ ~
							}
							execute if score .this aj.player.floss.frame matches 8..15 run {
								name tree/rightleg_pos_8-15
								execute if score .this aj.player.floss.frame matches 8 run tp @s ^-0.09283 ^-1.21392 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 9 run tp @s ^-0.06183 ^-1.21547 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 10 run tp @s ^-0.04883 ^-1.21612 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 11 run tp @s ^-0.06183 ^-1.21547 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 12 run tp @s ^-0.09283 ^-1.21392 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 13 run tp @s ^-0.12983 ^-1.21207 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 14 run tp @s ^-0.16083 ^-1.21052 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 15 run tp @s ^-0.17383 ^-1.20987 ^-0.00586 ~ ~
							}
							execute if score .this aj.player.floss.frame matches 16..23 run {
								name tree/rightleg_pos_16-23
								execute if score .this aj.player.floss.frame matches 16 run tp @s ^-0.16083 ^-1.21052 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 17 run tp @s ^-0.12983 ^-1.21207 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 18 run tp @s ^-0.09283 ^-1.21392 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 19 run tp @s ^-0.06183 ^-1.21547 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 20 run tp @s ^-0.04883 ^-1.21612 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 21 run tp @s ^-0.06183 ^-1.21547 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 22 run tp @s ^-0.09283 ^-1.21392 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 23 run tp @s ^-0.12983 ^-1.21207 ^-0.00586 ~ ~
							}
							execute if score .this aj.player.floss.frame matches 24..30 run {
								name tree/rightleg_pos_24-30
								execute if score .this aj.player.floss.frame matches 24 run tp @s ^-0.16083 ^-1.21052 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 25 run tp @s ^-0.17383 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 26 run tp @s ^-0.16283 ^-1.21042 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 27 run tp @s ^-0.13583 ^-1.21177 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 28 run tp @s ^-0.10183 ^-1.21347 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 29 run tp @s ^-0.06983 ^-1.21507 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 30 run tp @s ^-0.04883 ^-1.21612 ^-0.00586 ~ ~
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.leftleg] run {
						name tree/leftleg_pos_top
						execute if score .this aj.player.floss.frame matches 0..30 run {
							name tree/leftleg_pos_0-30
							execute if score .this aj.player.floss.frame matches 0..7 run {
								name tree/leftleg_pos_0-7
								execute if score .this aj.player.floss.frame matches 0 run tp @s ^0.17383 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 1 run tp @s ^0.15283 ^-1.21092 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 2 run tp @s ^0.12083 ^-1.21252 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 3 run tp @s ^0.08683 ^-1.21422 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 4 run tp @s ^0.05983 ^-1.21557 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 5 run tp @s ^0.04883 ^-1.21612 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 6 run tp @s ^0.06183 ^-1.21547 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 7 run tp @s ^0.09283 ^-1.21392 ^-0.00586 ~ ~
							}
							execute if score .this aj.player.floss.frame matches 8..15 run {
								name tree/leftleg_pos_8-15
								execute if score .this aj.player.floss.frame matches 8 run tp @s ^0.12983 ^-1.21207 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 9 run tp @s ^0.16083 ^-1.21052 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 10 run tp @s ^0.17383 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 11 run tp @s ^0.16083 ^-1.21052 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 12 run tp @s ^0.12983 ^-1.21207 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 13 run tp @s ^0.09283 ^-1.21392 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 14 run tp @s ^0.06183 ^-1.21547 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 15 run tp @s ^0.04883 ^-1.21612 ^-0.00586 ~ ~
							}
							execute if score .this aj.player.floss.frame matches 16..23 run {
								name tree/leftleg_pos_16-23
								execute if score .this aj.player.floss.frame matches 16 run tp @s ^0.06183 ^-1.21547 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 17 run tp @s ^0.09283 ^-1.21392 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 18 run tp @s ^0.12983 ^-1.21207 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 19 run tp @s ^0.16083 ^-1.21052 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 20 run tp @s ^0.17383 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 21 run tp @s ^0.16083 ^-1.21052 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 22 run tp @s ^0.12983 ^-1.21207 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 23 run tp @s ^0.09283 ^-1.21392 ^-0.00586 ~ ~
							}
							execute if score .this aj.player.floss.frame matches 24..30 run {
								name tree/leftleg_pos_24-30
								execute if score .this aj.player.floss.frame matches 24 run tp @s ^0.06183 ^-1.21547 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 25 run tp @s ^0.04883 ^-1.21612 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 26 run tp @s ^0.05983 ^-1.21557 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 27 run tp @s ^0.08683 ^-1.21422 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 28 run tp @s ^0.12083 ^-1.21252 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 29 run tp @s ^0.15283 ^-1.21092 ^-0.00586 ~ ~
								execute if score .this aj.player.floss.frame matches 30 run tp @s ^0.17383 ^-1.20987 ^-0.00586 ~ ~
							}
						}
					}
					execute store result entity @s Air short 1 run scoreboard players get .this aj.player.floss.frame
				}
				# Bone Displays
				execute if entity @s[type=minecraft:armor_stand] run {
					name tree/display_bone_name
					# Rotation
					execute if entity @s[tag=aj.player.bone.head] run {
						name tree/head_rot_top
						execute if score .this aj.player.floss.frame matches 0..30 run {
							name tree/head_rot_0-30
							execute if score .this aj.player.floss.frame matches 0 run data modify entity @s Pose.Head set value [0f,0f,0f]
							execute if score .this aj.player.floss.frame matches 30 run data modify entity @s Pose.Head set value [0f,0f,0f]
						}
					}
					execute if entity @s[tag=aj.player.bone.body] run {
						name tree/body_rot_top
						execute if score .this aj.player.floss.frame matches 0..30 run {
							name tree/body_rot_0-30
							execute if score .this aj.player.floss.frame matches 0..7 run {
								name tree/body_rot_0-7
								execute if score .this aj.player.floss.frame matches 0 run data modify entity @s Pose.Head set value [0f,0f,-12f]
								execute if score .this aj.player.floss.frame matches 1 run data modify entity @s Pose.Head set value [0f,0f,-7.968f]
								execute if score .this aj.player.floss.frame matches 2 run data modify entity @s Pose.Head set value [0f,0f,-1.824f]
								execute if score .this aj.player.floss.frame matches 3 run data modify entity @s Pose.Head set value [0f,0f,4.704f]
								execute if score .this aj.player.floss.frame matches 4 run data modify entity @s Pose.Head set value [0f,0f,9.888f]
								execute if score .this aj.player.floss.frame matches 5 run data modify entity @s Pose.Head set value [0f,0f,12f]
								execute if score .this aj.player.floss.frame matches 6 run data modify entity @s Pose.Head set value [0f,0f,9.504f]
								execute if score .this aj.player.floss.frame matches 7 run data modify entity @s Pose.Head set value [0f,0f,3.552f]
							}
							execute if score .this aj.player.floss.frame matches 8..15 run {
								name tree/body_rot_8-15
								execute if score .this aj.player.floss.frame matches 8 run data modify entity @s Pose.Head set value [0f,0f,-3.552f]
								execute if score .this aj.player.floss.frame matches 9 run data modify entity @s Pose.Head set value [0f,0f,-9.504f]
								execute if score .this aj.player.floss.frame matches 10 run data modify entity @s Pose.Head set value [0f,0f,-12f]
								execute if score .this aj.player.floss.frame matches 11 run data modify entity @s Pose.Head set value [0f,0f,-9.504f]
								execute if score .this aj.player.floss.frame matches 12 run data modify entity @s Pose.Head set value [0f,0f,-3.552f]
								execute if score .this aj.player.floss.frame matches 13 run data modify entity @s Pose.Head set value [0f,0f,3.552f]
								execute if score .this aj.player.floss.frame matches 14 run data modify entity @s Pose.Head set value [0f,0f,9.504f]
								execute if score .this aj.player.floss.frame matches 15 run data modify entity @s Pose.Head set value [0f,0f,12f]
							}
							execute if score .this aj.player.floss.frame matches 16..23 run {
								name tree/body_rot_16-23
								execute if score .this aj.player.floss.frame matches 16 run data modify entity @s Pose.Head set value [0f,0f,9.504f]
								execute if score .this aj.player.floss.frame matches 17 run data modify entity @s Pose.Head set value [0f,0f,3.552f]
								execute if score .this aj.player.floss.frame matches 18 run data modify entity @s Pose.Head set value [0f,0f,-3.552f]
								execute if score .this aj.player.floss.frame matches 19 run data modify entity @s Pose.Head set value [0f,0f,-9.504f]
								execute if score .this aj.player.floss.frame matches 20 run data modify entity @s Pose.Head set value [0f,0f,-12f]
								execute if score .this aj.player.floss.frame matches 21 run data modify entity @s Pose.Head set value [0f,0f,-9.504f]
								execute if score .this aj.player.floss.frame matches 22 run data modify entity @s Pose.Head set value [0f,0f,-3.552f]
								execute if score .this aj.player.floss.frame matches 23 run data modify entity @s Pose.Head set value [0f,0f,3.552f]
							}
							execute if score .this aj.player.floss.frame matches 24..30 run {
								name tree/body_rot_24-30
								execute if score .this aj.player.floss.frame matches 24 run data modify entity @s Pose.Head set value [0f,0f,9.504f]
								execute if score .this aj.player.floss.frame matches 25 run data modify entity @s Pose.Head set value [0f,0f,12f]
								execute if score .this aj.player.floss.frame matches 26 run data modify entity @s Pose.Head set value [0f,0f,9.888f]
								execute if score .this aj.player.floss.frame matches 27 run data modify entity @s Pose.Head set value [0f,0f,4.704f]
								execute if score .this aj.player.floss.frame matches 28 run data modify entity @s Pose.Head set value [0f,0f,-1.824f]
								execute if score .this aj.player.floss.frame matches 29 run data modify entity @s Pose.Head set value [0f,0f,-7.968f]
								execute if score .this aj.player.floss.frame matches 30 run data modify entity @s Pose.Head set value [0f,0f,-12f]
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.rightarm] run {
						name tree/rightarm_rot_top
						execute if score .this aj.player.floss.frame matches 0..30 run {
							name tree/rightarm_rot_0-30
							execute if score .this aj.player.floss.frame matches 0..7 run {
								name tree/rightarm_rot_0-7
								execute if score .this aj.player.floss.frame matches 0 run data modify entity @s Pose.Head set value [-45f,45f,23f]
								execute if score .this aj.player.floss.frame matches 1 run data modify entity @s Pose.Head set value [-44.96f,29.88f,15.272f]
								execute if score .this aj.player.floss.frame matches 2 run data modify entity @s Pose.Head set value [-44.88f,6.84f,3.496f]
								execute if score .this aj.player.floss.frame matches 3 run data modify entity @s Pose.Head set value [-44.82f,-17.64f,-9.016f]
								execute if score .this aj.player.floss.frame matches 4 run data modify entity @s Pose.Head set value [-44.84f,-37.08f,-18.952f]
								execute if score .this aj.player.floss.frame matches 5 run data modify entity @s Pose.Head set value [-45f,-45f,-23f]
								execute if score .this aj.player.floss.frame matches 6 run data modify entity @s Pose.Head set value [-45.42f,-35.64f,-18.216f]
								execute if score .this aj.player.floss.frame matches 7 run data modify entity @s Pose.Head set value [-46.06f,-13.32f,-6.808f]
							}
							execute if score .this aj.player.floss.frame matches 8..15 run {
								name tree/rightarm_rot_8-15
								execute if score .this aj.player.floss.frame matches 8 run data modify entity @s Pose.Head set value [-46.74f,13.32f,6.808f]
								execute if score .this aj.player.floss.frame matches 9 run data modify entity @s Pose.Head set value [-47.28f,35.64f,18.216f]
								execute if score .this aj.player.floss.frame matches 10 run data modify entity @s Pose.Head set value [-47.5f,45f,23f]
								execute if score .this aj.player.floss.frame matches 11 run data modify entity @s Pose.Head set value [-47.28f,35.64f,18.216f]
								execute if score .this aj.player.floss.frame matches 12 run data modify entity @s Pose.Head set value [-46.74f,13.32f,6.808f]
								execute if score .this aj.player.floss.frame matches 13 run data modify entity @s Pose.Head set value [-46.06f,-13.32f,-6.808f]
								execute if score .this aj.player.floss.frame matches 14 run data modify entity @s Pose.Head set value [-45.42f,-35.64f,-18.216f]
								execute if score .this aj.player.floss.frame matches 15 run data modify entity @s Pose.Head set value [-45f,-45f,-23f]
							}
							execute if score .this aj.player.floss.frame matches 16..23 run {
								name tree/rightarm_rot_16-23
								execute if score .this aj.player.floss.frame matches 16 run data modify entity @s Pose.Head set value [-46.64f,-37f,-18.696f]
								execute if score .this aj.player.floss.frame matches 17 run data modify entity @s Pose.Head set value [-50.22f,-17.4f,-8.248f]
								execute if score .this aj.player.floss.frame matches 18 run data modify entity @s Pose.Head set value [-52.98f,7.2f,4.648f]
								execute if score .this aj.player.floss.frame matches 19 run data modify entity @s Pose.Head set value [-52.16f,30.2f,16.296f]
								execute if score .this aj.player.floss.frame matches 20 run data modify entity @s Pose.Head set value [-45f,45f,23f]
								execute if score .this aj.player.floss.frame matches 21 run data modify entity @s Pose.Head set value [-26.1f,49.92f,23.256f]
								execute if score .this aj.player.floss.frame matches 22 run data modify entity @s Pose.Head set value [2.7f,49.36f,19.528f]
								execute if score .this aj.player.floss.frame matches 23 run data modify entity @s Pose.Head set value [33.3f,45.84f,14.072f]
							}
							execute if score .this aj.player.floss.frame matches 24..30 run {
								name tree/rightarm_rot_24-30
								execute if score .this aj.player.floss.frame matches 24 run data modify entity @s Pose.Head set value [57.6f,41.88f,9.144f]
								execute if score .this aj.player.floss.frame matches 25 run data modify entity @s Pose.Head set value [67.5f,40f,7f]
								execute if score .this aj.player.floss.frame matches 26 run data modify entity @s Pose.Head set value [57.6f,40.44f,8.408f]
								execute if score .this aj.player.floss.frame matches 27 run data modify entity @s Pose.Head set value [33.3f,41.52f,11.864f]
								execute if score .this aj.player.floss.frame matches 28 run data modify entity @s Pose.Head set value [2.7f,42.88f,16.216f]
								execute if score .this aj.player.floss.frame matches 29 run data modify entity @s Pose.Head set value [-26.1f,44.16f,20.312f]
								execute if score .this aj.player.floss.frame matches 30 run data modify entity @s Pose.Head set value [-45f,45f,23f]
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.leftarm] run {
						name tree/leftarm_rot_top
						execute if score .this aj.player.floss.frame matches 0..30 run {
							name tree/leftarm_rot_0-30
							execute if score .this aj.player.floss.frame matches 0..7 run {
								name tree/leftarm_rot_0-7
								execute if score .this aj.player.floss.frame matches 0 run data modify entity @s Pose.Head set value [-45f,45f,23f]
								execute if score .this aj.player.floss.frame matches 1 run data modify entity @s Pose.Head set value [-46.8f,31.24f,15.752f]
								execute if score .this aj.player.floss.frame matches 2 run data modify entity @s Pose.Head set value [-50.4f,10.92f,4.936f]
								execute if score .this aj.player.floss.frame matches 3 run data modify entity @s Pose.Head set value [-53.1f,-11.52f,-6.856f]
								execute if score .this aj.player.floss.frame matches 4 run data modify entity @s Pose.Head set value [-52.2f,-31.64f,-17.032f]
								execute if score .this aj.player.floss.frame matches 5 run data modify entity @s Pose.Head set value [-45f,-45f,-23f]
								execute if score .this aj.player.floss.frame matches 6 run data modify entity @s Pose.Head set value [-26.1f,-49.92f,-23.256f]
								execute if score .this aj.player.floss.frame matches 7 run data modify entity @s Pose.Head set value [2.7f,-49.36f,-19.528f]
							}
							execute if score .this aj.player.floss.frame matches 8..15 run {
								name tree/leftarm_rot_8-15
								execute if score .this aj.player.floss.frame matches 8 run data modify entity @s Pose.Head set value [33.3f,-45.84f,-14.072f]
								execute if score .this aj.player.floss.frame matches 9 run data modify entity @s Pose.Head set value [57.6f,-41.88f,-9.144f]
								execute if score .this aj.player.floss.frame matches 10 run data modify entity @s Pose.Head set value [67.5f,-40f,-7f]
								execute if score .this aj.player.floss.frame matches 11 run data modify entity @s Pose.Head set value [57.6f,-41.88f,-9.144f]
								execute if score .this aj.player.floss.frame matches 12 run data modify entity @s Pose.Head set value [33.3f,-45.84f,-14.072f]
								execute if score .this aj.player.floss.frame matches 13 run data modify entity @s Pose.Head set value [2.7f,-49.36f,-19.528f]
								execute if score .this aj.player.floss.frame matches 14 run data modify entity @s Pose.Head set value [-26.1f,-49.92f,-23.256f]
								execute if score .this aj.player.floss.frame matches 15 run data modify entity @s Pose.Head set value [-45f,-45f,-23f]
							}
							execute if score .this aj.player.floss.frame matches 16..23 run {
								name tree/leftarm_rot_16-23
								execute if score .this aj.player.floss.frame matches 16 run data modify entity @s Pose.Head set value [-52.2f,-30.2f,-16.296f]
								execute if score .this aj.player.floss.frame matches 17 run data modify entity @s Pose.Head set value [-53.1f,-7.2f,-4.648f]
								execute if score .this aj.player.floss.frame matches 18 run data modify entity @s Pose.Head set value [-50.4f,17.4f,8.248f]
								execute if score .this aj.player.floss.frame matches 19 run data modify entity @s Pose.Head set value [-46.8f,37f,18.696f]
								execute if score .this aj.player.floss.frame matches 20 run data modify entity @s Pose.Head set value [-45f,45f,23f]
								execute if score .this aj.player.floss.frame matches 21 run data modify entity @s Pose.Head set value [-45f,35.64f,18.216f]
								execute if score .this aj.player.floss.frame matches 22 run data modify entity @s Pose.Head set value [-45f,13.32f,6.808f]
								execute if score .this aj.player.floss.frame matches 23 run data modify entity @s Pose.Head set value [-45f,-13.32f,-6.808f]
							}
							execute if score .this aj.player.floss.frame matches 24..30 run {
								name tree/leftarm_rot_24-30
								execute if score .this aj.player.floss.frame matches 24 run data modify entity @s Pose.Head set value [-45f,-35.64f,-18.216f]
								execute if score .this aj.player.floss.frame matches 25 run data modify entity @s Pose.Head set value [-45f,-45f,-23f]
								execute if score .this aj.player.floss.frame matches 26 run data modify entity @s Pose.Head set value [-45f,-37.08f,-18.952f]
								execute if score .this aj.player.floss.frame matches 27 run data modify entity @s Pose.Head set value [-45f,-17.64f,-9.016f]
								execute if score .this aj.player.floss.frame matches 28 run data modify entity @s Pose.Head set value [-45f,6.84f,3.496f]
								execute if score .this aj.player.floss.frame matches 29 run data modify entity @s Pose.Head set value [-45f,29.88f,15.272f]
								execute if score .this aj.player.floss.frame matches 30 run data modify entity @s Pose.Head set value [-45f,45f,23f]
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.rightleg] run {
						name tree/rightleg_rot_top
						execute if score .this aj.player.floss.frame matches 0..30 run {
							name tree/rightleg_rot_0-30
							execute if score .this aj.player.floss.frame matches 0..7 run {
								name tree/rightleg_rot_0-7
								execute if score .this aj.player.floss.frame matches 0 run data modify entity @s Pose.Head set value [0f,0f,12f]
								execute if score .this aj.player.floss.frame matches 1 run data modify entity @s Pose.Head set value [0f,0f,9.984f]
								execute if score .this aj.player.floss.frame matches 2 run data modify entity @s Pose.Head set value [0f,0f,6.912f]
								execute if score .this aj.player.floss.frame matches 3 run data modify entity @s Pose.Head set value [0f,0f,3.648f]
								execute if score .this aj.player.floss.frame matches 4 run data modify entity @s Pose.Head set value [0f,0f,1.056f]
								execute if score .this aj.player.floss.frame matches 5 run data modify entity @s Pose.Head set value [0f,0f,0f]
								execute if score .this aj.player.floss.frame matches 6 run data modify entity @s Pose.Head set value [0f,0f,1.248f]
								execute if score .this aj.player.floss.frame matches 7 run data modify entity @s Pose.Head set value [0f,0f,4.224f]
							}
							execute if score .this aj.player.floss.frame matches 8..15 run {
								name tree/rightleg_rot_8-15
								execute if score .this aj.player.floss.frame matches 8 run data modify entity @s Pose.Head set value [0f,0f,7.776f]
								execute if score .this aj.player.floss.frame matches 9 run data modify entity @s Pose.Head set value [0f,0f,10.752f]
								execute if score .this aj.player.floss.frame matches 10 run data modify entity @s Pose.Head set value [0f,0f,12f]
								execute if score .this aj.player.floss.frame matches 11 run data modify entity @s Pose.Head set value [0f,0f,10.752f]
								execute if score .this aj.player.floss.frame matches 12 run data modify entity @s Pose.Head set value [0f,0f,7.776f]
								execute if score .this aj.player.floss.frame matches 13 run data modify entity @s Pose.Head set value [0f,0f,4.224f]
								execute if score .this aj.player.floss.frame matches 14 run data modify entity @s Pose.Head set value [0f,0f,1.248f]
								execute if score .this aj.player.floss.frame matches 15 run data modify entity @s Pose.Head set value [0f,0f,0f]
							}
							execute if score .this aj.player.floss.frame matches 16..23 run {
								name tree/rightleg_rot_16-23
								execute if score .this aj.player.floss.frame matches 16 run data modify entity @s Pose.Head set value [0f,0f,1.248f]
								execute if score .this aj.player.floss.frame matches 17 run data modify entity @s Pose.Head set value [0f,0f,4.224f]
								execute if score .this aj.player.floss.frame matches 18 run data modify entity @s Pose.Head set value [0f,0f,7.776f]
								execute if score .this aj.player.floss.frame matches 19 run data modify entity @s Pose.Head set value [0f,0f,10.752f]
								execute if score .this aj.player.floss.frame matches 20 run data modify entity @s Pose.Head set value [0f,0f,12f]
								execute if score .this aj.player.floss.frame matches 21 run data modify entity @s Pose.Head set value [0f,0f,10.752f]
								execute if score .this aj.player.floss.frame matches 22 run data modify entity @s Pose.Head set value [0f,0f,7.776f]
								execute if score .this aj.player.floss.frame matches 23 run data modify entity @s Pose.Head set value [0f,0f,4.224f]
							}
							execute if score .this aj.player.floss.frame matches 24..30 run {
								name tree/rightleg_rot_24-30
								execute if score .this aj.player.floss.frame matches 24 run data modify entity @s Pose.Head set value [0f,0f,1.248f]
								execute if score .this aj.player.floss.frame matches 25 run data modify entity @s Pose.Head set value [0f,0f,0f]
								execute if score .this aj.player.floss.frame matches 26 run data modify entity @s Pose.Head set value [0f,0f,1.056f]
								execute if score .this aj.player.floss.frame matches 27 run data modify entity @s Pose.Head set value [0f,0f,3.648f]
								execute if score .this aj.player.floss.frame matches 28 run data modify entity @s Pose.Head set value [0f,0f,6.912f]
								execute if score .this aj.player.floss.frame matches 29 run data modify entity @s Pose.Head set value [0f,0f,9.984f]
								execute if score .this aj.player.floss.frame matches 30 run data modify entity @s Pose.Head set value [0f,0f,12f]
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.leftleg] run {
						name tree/leftleg_rot_top
						execute if score .this aj.player.floss.frame matches 0..30 run {
							name tree/leftleg_rot_0-30
							execute if score .this aj.player.floss.frame matches 0..7 run {
								name tree/leftleg_rot_0-7
								execute if score .this aj.player.floss.frame matches 0 run data modify entity @s Pose.Head set value [0f,0f,0f]
								execute if score .this aj.player.floss.frame matches 1 run data modify entity @s Pose.Head set value [0f,0f,-2.016f]
								execute if score .this aj.player.floss.frame matches 2 run data modify entity @s Pose.Head set value [0f,0f,-5.088f]
								execute if score .this aj.player.floss.frame matches 3 run data modify entity @s Pose.Head set value [0f,0f,-8.352f]
								execute if score .this aj.player.floss.frame matches 4 run data modify entity @s Pose.Head set value [0f,0f,-10.944f]
								execute if score .this aj.player.floss.frame matches 5 run data modify entity @s Pose.Head set value [0f,0f,-12f]
								execute if score .this aj.player.floss.frame matches 6 run data modify entity @s Pose.Head set value [0f,0f,-10.752f]
								execute if score .this aj.player.floss.frame matches 7 run data modify entity @s Pose.Head set value [0f,0f,-7.776f]
							}
							execute if score .this aj.player.floss.frame matches 8..15 run {
								name tree/leftleg_rot_8-15
								execute if score .this aj.player.floss.frame matches 8 run data modify entity @s Pose.Head set value [0f,0f,-4.224f]
								execute if score .this aj.player.floss.frame matches 9 run data modify entity @s Pose.Head set value [0f,0f,-1.248f]
								execute if score .this aj.player.floss.frame matches 10 run data modify entity @s Pose.Head set value [0f,0f,0f]
								execute if score .this aj.player.floss.frame matches 11 run data modify entity @s Pose.Head set value [0f,0f,-1.248f]
								execute if score .this aj.player.floss.frame matches 12 run data modify entity @s Pose.Head set value [0f,0f,-4.224f]
								execute if score .this aj.player.floss.frame matches 13 run data modify entity @s Pose.Head set value [0f,0f,-7.776f]
								execute if score .this aj.player.floss.frame matches 14 run data modify entity @s Pose.Head set value [0f,0f,-10.752f]
								execute if score .this aj.player.floss.frame matches 15 run data modify entity @s Pose.Head set value [0f,0f,-12f]
							}
							execute if score .this aj.player.floss.frame matches 16..23 run {
								name tree/leftleg_rot_16-23
								execute if score .this aj.player.floss.frame matches 16 run data modify entity @s Pose.Head set value [0f,0f,-10.752f]
								execute if score .this aj.player.floss.frame matches 17 run data modify entity @s Pose.Head set value [0f,0f,-7.776f]
								execute if score .this aj.player.floss.frame matches 18 run data modify entity @s Pose.Head set value [0f,0f,-4.224f]
								execute if score .this aj.player.floss.frame matches 19 run data modify entity @s Pose.Head set value [0f,0f,-1.248f]
								execute if score .this aj.player.floss.frame matches 20 run data modify entity @s Pose.Head set value [0f,0f,0f]
								execute if score .this aj.player.floss.frame matches 21 run data modify entity @s Pose.Head set value [0f,0f,-1.248f]
								execute if score .this aj.player.floss.frame matches 22 run data modify entity @s Pose.Head set value [0f,0f,-4.224f]
								execute if score .this aj.player.floss.frame matches 23 run data modify entity @s Pose.Head set value [0f,0f,-7.776f]
							}
							execute if score .this aj.player.floss.frame matches 24..30 run {
								name tree/leftleg_rot_24-30
								execute if score .this aj.player.floss.frame matches 24 run data modify entity @s Pose.Head set value [0f,0f,-10.752f]
								execute if score .this aj.player.floss.frame matches 25 run data modify entity @s Pose.Head set value [0f,0f,-12f]
								execute if score .this aj.player.floss.frame matches 26 run data modify entity @s Pose.Head set value [0f,0f,-10.944f]
								execute if score .this aj.player.floss.frame matches 27 run data modify entity @s Pose.Head set value [0f,0f,-8.352f]
								execute if score .this aj.player.floss.frame matches 28 run data modify entity @s Pose.Head set value [0f,0f,-5.088f]
								execute if score .this aj.player.floss.frame matches 29 run data modify entity @s Pose.Head set value [0f,0f,-2.016f]
								execute if score .this aj.player.floss.frame matches 30 run data modify entity @s Pose.Head set value [0f,0f,0f]
							}
						}
					}
					# Scaling
					# Make sure rotation stays aligned with root entity
					execute positioned as @s run tp @s ~ ~ ~ ~ ~
				}
			}
			# Increment frame
			scoreboard players operation @s aj.player.floss.frame += .aj.player.framerate aj.i
			# Let the anim_loop know we're still running
			scoreboard players set .aj.animation aj.player.animating 1
			# If (the next frame is the end of the animation) perform the necessary actions for the loop mode of the animation
			execute if score .aj.player.framerate aj.i matches 1.. if score @s aj.player.floss.frame matches 31.. run function player:animations/floss/edge
			execute if score .aj.player.framerate aj.i matches ..0 if score @s aj.player.floss.frame matches ..-1 run function player:animations/floss/edge
			# execute unless score @s aj.player.floss.frame matches 0..30 run function player:animations/floss/edge
		}
		# Performs a loop mode action depending on what the animation's configured loop mode is
		function edge {
			# Play Once
			execute if score @s aj.player.floss.loopMode matches 0 run function player:animations/floss/stop
			# Hold on last frame
			execute if score @s aj.player.floss.loopMode matches 1 run function player:animations/floss/pause
			# loop
			execute if score @s aj.player.floss.loopMode matches 2 run {
				execute (if score @s aj.player.floss.frame matches ..1) {
					scoreboard players set @s aj.player.floss.frame 31
				} else {
					scoreboard players set @s aj.player.floss.frame 0
				}
			}
		}
	}
	dir walk {
		# Starts the animation from the first frame
		function play {
			# Make sure this function has been ran as the root entity
			execute(if entity @s[tag=aj.player.root] at @s) {
				# Add animation tag
				tag @s add aj.player.anim.walk
				# Reset animation time
				execute if score .aj.player.framerate aj.i matches ..-1 run scoreboard players set @s aj.player.walk.frame 15
				execute if score .aj.player.framerate aj.i matches 1.. run scoreboard players set @s aj.player.walk.frame 0
				# Assert that .noScripts is tracked properly
				scoreboard players add .noScripts aj.i 0
				# Start the animation loop if not running
				execute if score .aj.anim_loop aj.player.animating matches 0 run function player:animation_loop
				# If this entity is not the root
			} else {
				tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:animations/walk/play ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
			}
		}
		# Stops the animation and resets to first frame
		function stop {
			# Make sure this function has been ran as the root entity
			execute(if entity @s[tag=aj.player.root] at @s) {
				# Add animation tag
				tag @s remove aj.player.anim.walk
				# Reset animation time
				scoreboard players set @s aj.player.walk.frame 0
				# load initial animation frame without running scripts
				scoreboard players operation .oldValue aj.i = .noScripts aj.i
				scoreboard players set .noScripts aj.i 1
				function player:animations/walk/next_frame
				scoreboard players operation .noScripts aj.i = .oldValue aj.i
				# Reset animation time
				scoreboard players set @s aj.player.walk.frame 0
				# If this entity is not the root
			} else {
				tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:animations/walk/stop ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
			}
		}
		# Pauses the animation on the current frame
		function pause {
			# Make sure this function has been ran as the root entity
			execute(if entity @s[tag=aj.player.root] at @s) {
				# Remove animation tag
				tag @s remove aj.player.anim.walk
				# If this entity is not the root
			} else {
				tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:animations/walk/pause ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
			}
		}
		# Resumes the animation from the current frame
		function resume {
			# Make sure this function has been ran as the root entity
			execute(if entity @s[tag=aj.player.root]) {
				# Remove animation tag
				tag @s add aj.player.anim.walk
				# Start the animation loop
				execute if score .aj.anim_loop aj.player.animating matches 0 run function player:animation_loop
				# If this entity is not the root
			} else {
				tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:animations/walk/resume ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
			}
		}
		# Plays the next frame in the animation
		function next_frame {
			scoreboard players operation .this aj.id = @s aj.id
			scoreboard players operation .this aj.player.walk.frame = @s aj.player.walk.frame
			execute rotated ~ 0 as @e[type=#player:bone_entities,tag=aj.player.bone,distance=..2.552] if score @s aj.id = .this aj.id run {
				name tree/trunk
				# Bone Roots
				execute if entity @s[type=minecraft:area_effect_cloud] run {
					name tree/root_bone_name
					# Position
					execute if entity @s[tag=aj.player.bone.head] run {
						name tree/head_pos_top
						execute if score .this aj.player.walk.frame matches 0..14 run {
							name tree/head_pos_0-14
							execute if score .this aj.player.walk.frame matches 0..7 run {
								name tree/head_pos_0-7
								execute if score .this aj.player.walk.frame matches 0 run tp @s ^0.00054 ^-0.49179 ^0.03067 ~ ~
								execute if score .this aj.player.walk.frame matches 1 run tp @s ^0.00048 ^-0.48596 ^0.00631 ~ ~
								execute if score .this aj.player.walk.frame matches 2 run tp @s ^0.00034 ^-0.47281 ^0.00015 ~ ~
								execute if score .this aj.player.walk.frame matches 3 run tp @s ^0.00012 ^-0.46217 ^0.01677 ~ ~
								execute if score .this aj.player.walk.frame matches 4 run tp @s ^-0.00011 ^-0.46199 ^0.04378 ~ ~
								execute if score .this aj.player.walk.frame matches 5 run tp @s ^-0.00033 ^-0.47239 ^0.06099 ~ ~
								execute if score .this aj.player.walk.frame matches 6 run tp @s ^-0.00048 ^-0.48562 ^0.05556 ~ ~
								execute if score .this aj.player.walk.frame matches 7 run tp @s ^-0.00054 ^-0.49179 ^0.03154 ~ ~
							}
							execute if score .this aj.player.walk.frame matches 8..14 run {
								name tree/head_pos_8-14
								execute if score .this aj.player.walk.frame matches 8 run tp @s ^-0.00049 ^-0.4863 ^0.00687 ~ ~
								execute if score .this aj.player.walk.frame matches 9 run tp @s ^-0.00034 ^-0.47324 ^-0.00003 ~ ~
								execute if score .this aj.player.walk.frame matches 10 run tp @s ^-0.00013 ^-0.46237 ^0.016 ~ ~
								execute if score .this aj.player.walk.frame matches 11 run tp @s ^0.00011 ^-0.46181 ^0.04298 ~ ~
								execute if score .this aj.player.walk.frame matches 12 run tp @s ^0.00032 ^-0.47197 ^0.06077 ~ ~
								execute if score .this aj.player.walk.frame matches 13 run tp @s ^0.00048 ^-0.48526 ^0.05608 ~ ~
								execute if score .this aj.player.walk.frame matches 14 run tp @s ^0.00054 ^-0.49177 ^0.03241 ~ ~
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.body] run {
						name tree/body_pos_top
						execute if score .this aj.player.walk.frame matches 0..14 run {
							name tree/body_pos_0-14
							execute if score .this aj.player.walk.frame matches 0..7 run {
								name tree/body_pos_0-7
								execute if score .this aj.player.walk.frame matches 0 run tp @s ^0 ^-1.19425 ^0 ~ ~
								execute if score .this aj.player.walk.frame matches 1 run tp @s ^0 ^-1.18842 ^-0.02435 ~ ~
								execute if score .this aj.player.walk.frame matches 2 run tp @s ^0 ^-1.17527 ^-0.03052 ~ ~
								execute if score .this aj.player.walk.frame matches 3 run tp @s ^0 ^-1.16463 ^-0.01389 ~ ~
								execute if score .this aj.player.walk.frame matches 4 run tp @s ^0 ^-1.16444 ^0.01311 ~ ~
								execute if score .this aj.player.walk.frame matches 5 run tp @s ^0 ^-1.17484 ^0.03032 ~ ~
								execute if score .this aj.player.walk.frame matches 6 run tp @s ^0 ^-1.18807 ^0.02489 ~ ~
								execute if score .this aj.player.walk.frame matches 7 run tp @s ^0 ^-1.19424 ^0.00087 ~ ~
							}
							execute if score .this aj.player.walk.frame matches 8..14 run {
								name tree/body_pos_8-14
								execute if score .this aj.player.walk.frame matches 8 run tp @s ^0 ^-1.18875 ^-0.0238 ~ ~
								execute if score .this aj.player.walk.frame matches 9 run tp @s ^0 ^-1.1757 ^-0.0307 ~ ~
								execute if score .this aj.player.walk.frame matches 10 run tp @s ^0 ^-1.16483 ^-0.01467 ~ ~
								execute if score .this aj.player.walk.frame matches 11 run tp @s ^0 ^-1.16426 ^0.01231 ~ ~
								execute if score .this aj.player.walk.frame matches 12 run tp @s ^0 ^-1.17442 ^0.0301 ~ ~
								execute if score .this aj.player.walk.frame matches 13 run tp @s ^0 ^-1.18772 ^0.02541 ~ ~
								execute if score .this aj.player.walk.frame matches 14 run tp @s ^0 ^-1.19423 ^0.00174 ~ ~
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.rightarm] run {
						name tree/rightarm_pos_top
						execute if score .this aj.player.walk.frame matches 0..14 run {
							name tree/rightarm_pos_0-14
							execute if score .this aj.player.walk.frame matches 0..7 run {
								name tree/rightarm_pos_0-7
								execute if score .this aj.player.walk.frame matches 0 run tp @s ^-0.29248 ^-0.60887 ^0.03067 ~ ~
								execute if score .this aj.player.walk.frame matches 1 run tp @s ^-0.29253 ^-0.60304 ^0.00581 ~ ~
								execute if score .this aj.player.walk.frame matches 2 run tp @s ^-0.29267 ^-0.58989 ^-0.00176 ~ ~
								execute if score .this aj.player.walk.frame matches 3 run tp @s ^-0.29286 ^-0.57925 ^0.01283 ~ ~
								execute if score .this aj.player.walk.frame matches 4 run tp @s ^-0.29306 ^-0.57906 ^0.03757 ~ ~
								execute if score .this aj.player.walk.frame matches 5 run tp @s ^-0.29323 ^-0.58947 ^0.05273 ~ ~
								execute if score .this aj.player.walk.frame matches 6 run tp @s ^-0.29333 ^-0.60269 ^0.04587 ~ ~
								execute if score .this aj.player.walk.frame matches 7 run tp @s ^-0.29337 ^-0.60886 ^0.02131 ~ ~
							}
							execute if score .this aj.player.walk.frame matches 8..14 run {
								name tree/rightarm_pos_8-14
								execute if score .this aj.player.walk.frame matches 8 run tp @s ^-0.29334 ^-0.60337 ^-0.00288 ~ ~
								execute if score .this aj.player.walk.frame matches 9 run tp @s ^-0.29323 ^-0.59032 ^-0.0084 ~ ~
								execute if score .this aj.player.walk.frame matches 10 run tp @s ^-0.29307 ^-0.57945 ^0.00965 ~ ~
								execute if score .this aj.player.walk.frame matches 11 run tp @s ^-0.29288 ^-0.57888 ^0.0389 ~ ~
								execute if score .this aj.player.walk.frame matches 12 run tp @s ^-0.29268 ^-0.58904 ^0.05875 ~ ~
								execute if score .this aj.player.walk.frame matches 13 run tp @s ^-0.29254 ^-0.60234 ^0.05551 ~ ~
								execute if score .this aj.player.walk.frame matches 14 run tp @s ^-0.29248 ^-0.60885 ^0.03241 ~ ~
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.leftarm] run {
						name tree/leftarm_pos_top
						execute if score .this aj.player.walk.frame matches 0..14 run {
							name tree/leftarm_pos_0-14
							execute if score .this aj.player.walk.frame matches 0..7 run {
								name tree/leftarm_pos_0-7
								execute if score .this aj.player.walk.frame matches 0 run tp @s ^0.29337 ^-0.60887 ^0.02044 ~ ~
								execute if score .this aj.player.walk.frame matches 1 run tp @s ^0.29333 ^-0.60304 ^-0.00341 ~ ~
								execute if score .this aj.player.walk.frame matches 2 run tp @s ^0.29323 ^-0.58989 ^-0.00817 ~ ~
								execute if score .this aj.player.walk.frame matches 3 run tp @s ^0.29307 ^-0.57925 ^0.0105 ~ ~
								execute if score .this aj.player.walk.frame matches 4 run tp @s ^0.29287 ^-0.57906 ^0.03976 ~ ~
								execute if score .this aj.player.walk.frame matches 5 run tp @s ^0.29268 ^-0.58947 ^0.05903 ~ ~
								execute if score .this aj.player.walk.frame matches 6 run tp @s ^0.29253 ^-0.60269 ^0.05503 ~ ~
								execute if score .this aj.player.walk.frame matches 7 run tp @s ^0.29248 ^-0.60886 ^0.03154 ~ ~
							}
							execute if score .this aj.player.walk.frame matches 8..14 run {
								name tree/leftarm_pos_8-14
								execute if score .this aj.player.walk.frame matches 8 run tp @s ^0.29253 ^-0.60337 ^0.0064 ~ ~
								execute if score .this aj.player.walk.frame matches 9 run tp @s ^0.29267 ^-0.59032 ^-0.00188 ~ ~
								execute if score .this aj.player.walk.frame matches 10 run tp @s ^0.29286 ^-0.57945 ^0.01212 ~ ~
								execute if score .this aj.player.walk.frame matches 11 run tp @s ^0.29306 ^-0.57888 ^0.03684 ~ ~
								execute if score .this aj.player.walk.frame matches 12 run tp @s ^0.29322 ^-0.58904 ^0.05256 ~ ~
								execute if score .this aj.player.walk.frame matches 13 run tp @s ^0.29333 ^-0.60234 ^0.04642 ~ ~
								execute if score .this aj.player.walk.frame matches 14 run tp @s ^0.29337 ^-0.60885 ^0.02219 ~ ~
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.rightleg] run {
						name tree/rightleg_pos_top
						execute if score .this aj.player.walk.frame matches 0..14 run {
							name tree/rightleg_pos_0-14
							execute if score .this aj.player.walk.frame matches 0..7 run {
								name tree/rightleg_pos_0-7
								execute if score .this aj.player.walk.frame matches 0 run tp @s ^-0.11133 ^-1.20987 ^0.05664 ~ ~
								execute if score .this aj.player.walk.frame matches 1 run tp @s ^-0.11133 ^-1.20987 ^0.02615 ~ ~
								execute if score .this aj.player.walk.frame matches 2 run tp @s ^-0.11133 ^-1.20987 ^0.00278 ~ ~
								execute if score .this aj.player.walk.frame matches 3 run tp @s ^-0.11133 ^-1.20987 ^-0.00548 ~ ~
								execute if score .this aj.player.walk.frame matches 4 run tp @s ^-0.11133 ^-1.20987 ^-0.00617 ~ ~
								execute if score .this aj.player.walk.frame matches 5 run tp @s ^-0.11133 ^-1.20987 ^-0.01402 ~ ~
								execute if score .this aj.player.walk.frame matches 6 run tp @s ^-0.11133 ^-1.20987 ^-0.03695 ~ ~
								execute if score .this aj.player.walk.frame matches 7 run tp @s ^-0.11133 ^-1.20987 ^-0.06748 ~ ~
							}
							execute if score .this aj.player.walk.frame matches 8..14 run {
								name tree/rightleg_pos_8-14
								execute if score .this aj.player.walk.frame matches 8 run tp @s ^-0.11133 ^-1.15744 ^-0.08639 ~ ~
								execute if score .this aj.player.walk.frame matches 9 run tp @s ^-0.11133 ^-1.11356 ^-0.07639 ~ ~
								execute if score .this aj.player.walk.frame matches 10 run tp @s ^-0.11133 ^-1.08859 ^-0.03565 ~ ~
								execute if score .this aj.player.walk.frame matches 11 run tp @s ^-0.11133 ^-1.08743 ^0.01902 ~ ~
								execute if score .this aj.player.walk.frame matches 12 run tp @s ^-0.11133 ^-1.11031 ^0.06203 ~ ~
								execute if score .this aj.player.walk.frame matches 13 run tp @s ^-0.11133 ^-1.15274 ^0.07514 ~ ~
								execute if score .this aj.player.walk.frame matches 14 run tp @s ^-0.11133 ^-1.20638 ^0.05836 ~ ~
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.leftleg] run {
						name tree/leftleg_pos_top
						execute if score .this aj.player.walk.frame matches 0..14 run {
							name tree/leftleg_pos_0-14
							execute if score .this aj.player.walk.frame matches 0..7 run {
								name tree/leftleg_pos_0-7
								execute if score .this aj.player.walk.frame matches 0 run tp @s ^0.11133 ^-1.20987 ^-0.06836 ~ ~
								execute if score .this aj.player.walk.frame matches 1 run tp @s ^0.11133 ^-1.15586 ^-0.08658 ~ ~
								execute if score .this aj.player.walk.frame matches 2 run tp @s ^0.11133 ^-1.11246 ^-0.07554 ~ ~
								execute if score .this aj.player.walk.frame matches 3 run tp @s ^0.11133 ^-1.08818 ^-0.03403 ~ ~
								execute if score .this aj.player.walk.frame matches 4 run tp @s ^0.11133 ^-1.08779 ^0.02067 ~ ~
								execute if score .this aj.player.walk.frame matches 5 run tp @s ^0.11133 ^-1.11137 ^0.06294 ~ ~
								execute if score .this aj.player.walk.frame matches 6 run tp @s ^0.11133 ^-1.1543 ^0.07501 ~ ~
								execute if score .this aj.player.walk.frame matches 7 run tp @s ^0.11133 ^-1.20813 ^0.05751 ~ ~
							}
							execute if score .this aj.player.walk.frame matches 8..14 run {
								name tree/leftleg_pos_8-14
								execute if score .this aj.player.walk.frame matches 8 run tp @s ^0.11133 ^-1.20987 ^0.02708 ~ ~
								execute if score .this aj.player.walk.frame matches 9 run tp @s ^0.11133 ^-1.20987 ^0.00328 ~ ~
								execute if score .this aj.player.walk.frame matches 10 run tp @s ^0.11133 ^-1.20987 ^-0.00541 ~ ~
								execute if score .this aj.player.walk.frame matches 11 run tp @s ^0.11133 ^-1.20987 ^-0.00612 ~ ~
								execute if score .this aj.player.walk.frame matches 12 run tp @s ^0.11133 ^-1.20987 ^-0.01355 ~ ~
								execute if score .this aj.player.walk.frame matches 13 run tp @s ^0.11133 ^-1.20987 ^-0.03604 ~ ~
								execute if score .this aj.player.walk.frame matches 14 run tp @s ^0.11133 ^-1.20987 ^-0.06659 ~ ~
							}
						}
					}
					execute store result entity @s Air short 1 run scoreboard players get .this aj.player.walk.frame
				}
				# Bone Displays
				execute if entity @s[type=minecraft:armor_stand] run {
					name tree/display_bone_name
					# Rotation
					execute if entity @s[tag=aj.player.bone.head] run {
						name tree/head_rot_top
						execute if score .this aj.player.walk.frame matches 0..14 run {
							name tree/head_rot_0-14
							execute if score .this aj.player.walk.frame matches 0..7 run {
								name tree/head_rot_0-7
								execute if score .this aj.player.walk.frame matches 0 run data modify entity @s Pose.Head set value [2.4996f,-0.001f,0.0436f]
								execute if score .this aj.player.walk.frame matches 1 run data modify entity @s Pose.Head set value [2.4997f,-0.0009f,0.0393f]
								execute if score .this aj.player.walk.frame matches 2 run data modify entity @s Pose.Head set value [2.4999f,-0.0006f,0.0273f]
								execute if score .this aj.player.walk.frame matches 3 run data modify entity @s Pose.Head set value [2.5f,-0.0002f,0.01f]
								execute if score .this aj.player.walk.frame matches 4 run data modify entity @s Pose.Head set value [2.5f,0.0002f,-0.0094f]
								execute if score .this aj.player.walk.frame matches 5 run data modify entity @s Pose.Head set value [2.4999f,0.0006f,-0.0269f]
								execute if score .this aj.player.walk.frame matches 6 run data modify entity @s Pose.Head set value [2.4997f,0.0009f,-0.0391f]
								execute if score .this aj.player.walk.frame matches 7 run data modify entity @s Pose.Head set value [2.4996f,0.001f,-0.0436f]
							}
							execute if score .this aj.player.walk.frame matches 8..14 run {
								name tree/head_rot_8-14
								execute if score .this aj.player.walk.frame matches 8 run data modify entity @s Pose.Head set value [2.4997f,0.0009f,-0.0396f]
								execute if score .this aj.player.walk.frame matches 9 run data modify entity @s Pose.Head set value [2.4998f,0.0006f,-0.0278f]
								execute if score .this aj.player.walk.frame matches 10 run data modify entity @s Pose.Head set value [2.5f,0.0002f,-0.0106f]
								execute if score .this aj.player.walk.frame matches 11 run data modify entity @s Pose.Head set value [2.5f,-0.0002f,0.0088f]
								execute if score .this aj.player.walk.frame matches 12 run data modify entity @s Pose.Head set value [2.4999f,-0.0006f,0.0264f]
								execute if score .this aj.player.walk.frame matches 13 run data modify entity @s Pose.Head set value [2.4997f,-0.0008f,0.0388f]
								execute if score .this aj.player.walk.frame matches 14 run data modify entity @s Pose.Head set value [2.4996f,-0.001f,0.0436f]
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.body] run {
						name tree/body_rot_top
						execute if score .this aj.player.walk.frame matches 0..14 run {
							name tree/body_rot_0-14
							execute if score .this aj.player.walk.frame matches 0..7 run {
								name tree/body_rot_0-7
								execute if score .this aj.player.walk.frame matches 0 run data modify entity @s Pose.Head set value [2.5f,-1f,0f]
								execute if score .this aj.player.walk.frame matches 1 run data modify entity @s Pose.Head set value [2.5f,-0.9018f,0f]
								execute if score .this aj.player.walk.frame matches 2 run data modify entity @s Pose.Head set value [2.5f,-0.6266f,0f]
								execute if score .this aj.player.walk.frame matches 3 run data modify entity @s Pose.Head set value [2.5f,-0.2284f,0f]
								execute if score .this aj.player.walk.frame matches 4 run data modify entity @s Pose.Head set value [2.5f,0.2147f,0f]
								execute if score .this aj.player.walk.frame matches 5 run data modify entity @s Pose.Head set value [2.5f,0.6157f,0f]
								execute if score .this aj.player.walk.frame matches 6 run data modify entity @s Pose.Head set value [2.5f,0.8957f,0f]
								execute if score .this aj.player.walk.frame matches 7 run data modify entity @s Pose.Head set value [2.5f,0.9999f,0f]
							}
							execute if score .this aj.player.walk.frame matches 8..14 run {
								name tree/body_rot_8-14
								execute if score .this aj.player.walk.frame matches 8 run data modify entity @s Pose.Head set value [2.5f,0.9078f,0f]
								execute if score .this aj.player.walk.frame matches 9 run data modify entity @s Pose.Head set value [2.5f,0.6374f,0f]
								execute if score .this aj.player.walk.frame matches 10 run data modify entity @s Pose.Head set value [2.5f,0.2419f,0f]
								execute if score .this aj.player.walk.frame matches 11 run data modify entity @s Pose.Head set value [2.5f,-0.2011f,0f]
								execute if score .this aj.player.walk.frame matches 12 run data modify entity @s Pose.Head set value [2.5f,-0.6046f,0f]
								execute if score .this aj.player.walk.frame matches 13 run data modify entity @s Pose.Head set value [2.5f,-0.8894f,0f]
								execute if score .this aj.player.walk.frame matches 14 run data modify entity @s Pose.Head set value [2.5f,-0.9996f,0f]
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.rightarm] run {
						name tree/rightarm_rot_top
						execute if score .this aj.player.walk.frame matches 0..14 run {
							name tree/rightarm_rot_0-14
							execute if score .this aj.player.walk.frame matches 0..7 run {
								name tree/rightarm_rot_0-7
								execute if score .this aj.player.walk.frame matches 0 run data modify entity @s Pose.Head set value [25f,-1f,0f]
								execute if score .this aj.player.walk.frame matches 1 run data modify entity @s Pose.Head set value [22.7912f,-0.9018f,0f]
								execute if score .this aj.player.walk.frame matches 2 run data modify entity @s Pose.Head set value [16.5986f,-0.6266f,0f]
								execute if score .this aj.player.walk.frame matches 3 run data modify entity @s Pose.Head set value [7.6379f,-0.2284f,0f]
								execute if score .this aj.player.walk.frame matches 4 run data modify entity @s Pose.Head set value [-2.3315f,0.2147f,0f]
								execute if score .this aj.player.walk.frame matches 5 run data modify entity @s Pose.Head set value [-11.3524f,0.6157f,0f]
								execute if score .this aj.player.walk.frame matches 6 run data modify entity @s Pose.Head set value [-17.6535f,0.8957f,0f]
								execute if score .this aj.player.walk.frame matches 7 run data modify entity @s Pose.Head set value [-19.9978f,0.9999f,0f]
							}
							execute if score .this aj.player.walk.frame matches 8..14 run {
								name tree/rightarm_rot_8-14
								execute if score .this aj.player.walk.frame matches 8 run data modify entity @s Pose.Head set value [-17.925f,0.9078f,0f]
								execute if score .this aj.player.walk.frame matches 9 run data modify entity @s Pose.Head set value [-11.842f,0.6374f,0f]
								execute if score .this aj.player.walk.frame matches 10 run data modify entity @s Pose.Head set value [-2.9432f,0.2419f,0f]
								execute if score .this aj.player.walk.frame matches 11 run data modify entity @s Pose.Head set value [7.0243f,-0.2011f,0f]
								execute if score .this aj.player.walk.frame matches 12 run data modify entity @s Pose.Head set value [16.1035f,-0.6046f,0f]
								execute if score .this aj.player.walk.frame matches 13 run data modify entity @s Pose.Head set value [22.5119f,-0.8894f,0f]
								execute if score .this aj.player.walk.frame matches 14 run data modify entity @s Pose.Head set value [24.9912f,-0.9996f,0f]
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.leftarm] run {
						name tree/leftarm_rot_top
						execute if score .this aj.player.walk.frame matches 0..14 run {
							name tree/leftarm_rot_0-14
							execute if score .this aj.player.walk.frame matches 0..7 run {
								name tree/leftarm_rot_0-7
								execute if score .this aj.player.walk.frame matches 0 run data modify entity @s Pose.Head set value [-20f,-1f,0f]
								execute if score .this aj.player.walk.frame matches 1 run data modify entity @s Pose.Head set value [-17.7912f,-0.9018f,0f]
								execute if score .this aj.player.walk.frame matches 2 run data modify entity @s Pose.Head set value [-11.5986f,-0.6266f,0f]
								execute if score .this aj.player.walk.frame matches 3 run data modify entity @s Pose.Head set value [-2.6379f,-0.2284f,0f]
								execute if score .this aj.player.walk.frame matches 4 run data modify entity @s Pose.Head set value [7.3315f,0.2147f,0f]
								execute if score .this aj.player.walk.frame matches 5 run data modify entity @s Pose.Head set value [16.3524f,0.6157f,0f]
								execute if score .this aj.player.walk.frame matches 6 run data modify entity @s Pose.Head set value [22.6535f,0.8957f,0f]
								execute if score .this aj.player.walk.frame matches 7 run data modify entity @s Pose.Head set value [24.9978f,0.9999f,0f]
							}
							execute if score .this aj.player.walk.frame matches 8..14 run {
								name tree/leftarm_rot_8-14
								execute if score .this aj.player.walk.frame matches 8 run data modify entity @s Pose.Head set value [22.925f,0.9078f,0f]
								execute if score .this aj.player.walk.frame matches 9 run data modify entity @s Pose.Head set value [16.842f,0.6374f,0f]
								execute if score .this aj.player.walk.frame matches 10 run data modify entity @s Pose.Head set value [7.9432f,0.2419f,0f]
								execute if score .this aj.player.walk.frame matches 11 run data modify entity @s Pose.Head set value [-2.0243f,-0.2011f,0f]
								execute if score .this aj.player.walk.frame matches 12 run data modify entity @s Pose.Head set value [-11.1035f,-0.6046f,0f]
								execute if score .this aj.player.walk.frame matches 13 run data modify entity @s Pose.Head set value [-17.5119f,-0.8894f,0f]
								execute if score .this aj.player.walk.frame matches 14 run data modify entity @s Pose.Head set value [-19.9912f,-0.9996f,0f]
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.rightleg] run {
						name tree/rightleg_rot_top
						execute if score .this aj.player.walk.frame matches 0..14 run {
							name tree/rightleg_rot_0-14
							execute if score .this aj.player.walk.frame matches 0..7 run {
								name tree/rightleg_rot_0-7
								execute if score .this aj.player.walk.frame matches 0 run data modify entity @s Pose.Head set value [-22.5f,0f,0f]
								execute if score .this aj.player.walk.frame matches 1 run data modify entity @s Pose.Head set value [-20.2912f,0f,0f]
								execute if score .this aj.player.walk.frame matches 2 run data modify entity @s Pose.Head set value [-14.0986f,0f,0f]
								execute if score .this aj.player.walk.frame matches 3 run data modify entity @s Pose.Head set value [-5.1379f,0f,0f]
								execute if score .this aj.player.walk.frame matches 4 run data modify entity @s Pose.Head set value [4.8315f,0f,0f]
								execute if score .this aj.player.walk.frame matches 5 run data modify entity @s Pose.Head set value [13.8524f,0f,0f]
								execute if score .this aj.player.walk.frame matches 6 run data modify entity @s Pose.Head set value [20.1535f,0f,0f]
								execute if score .this aj.player.walk.frame matches 7 run data modify entity @s Pose.Head set value [22.4978f,0f,0f]
							}
							execute if score .this aj.player.walk.frame matches 8..14 run {
								name tree/rightleg_rot_8-14
								execute if score .this aj.player.walk.frame matches 8 run data modify entity @s Pose.Head set value [20.425f,0f,0f]
								execute if score .this aj.player.walk.frame matches 9 run data modify entity @s Pose.Head set value [14.342f,0f,0f]
								execute if score .this aj.player.walk.frame matches 10 run data modify entity @s Pose.Head set value [5.4432f,0f,0f]
								execute if score .this aj.player.walk.frame matches 11 run data modify entity @s Pose.Head set value [-4.5243f,0f,0f]
								execute if score .this aj.player.walk.frame matches 12 run data modify entity @s Pose.Head set value [-13.6035f,0f,0f]
								execute if score .this aj.player.walk.frame matches 13 run data modify entity @s Pose.Head set value [-20.0119f,0f,0f]
								execute if score .this aj.player.walk.frame matches 14 run data modify entity @s Pose.Head set value [-22.4912f,0f,0f]
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.leftleg] run {
						name tree/leftleg_rot_top
						execute if score .this aj.player.walk.frame matches 0..14 run {
							name tree/leftleg_rot_0-14
							execute if score .this aj.player.walk.frame matches 0..7 run {
								name tree/leftleg_rot_0-7
								execute if score .this aj.player.walk.frame matches 0 run data modify entity @s Pose.Head set value [22.5f,0f,0f]
								execute if score .this aj.player.walk.frame matches 1 run data modify entity @s Pose.Head set value [20.2912f,0f,0f]
								execute if score .this aj.player.walk.frame matches 2 run data modify entity @s Pose.Head set value [14.0986f,0f,0f]
								execute if score .this aj.player.walk.frame matches 3 run data modify entity @s Pose.Head set value [5.1379f,0f,0f]
								execute if score .this aj.player.walk.frame matches 4 run data modify entity @s Pose.Head set value [-4.8315f,0f,0f]
								execute if score .this aj.player.walk.frame matches 5 run data modify entity @s Pose.Head set value [-13.8524f,0f,0f]
								execute if score .this aj.player.walk.frame matches 6 run data modify entity @s Pose.Head set value [-20.1535f,0f,0f]
								execute if score .this aj.player.walk.frame matches 7 run data modify entity @s Pose.Head set value [-22.4978f,0f,0f]
							}
							execute if score .this aj.player.walk.frame matches 8..14 run {
								name tree/leftleg_rot_8-14
								execute if score .this aj.player.walk.frame matches 8 run data modify entity @s Pose.Head set value [-20.425f,0f,0f]
								execute if score .this aj.player.walk.frame matches 9 run data modify entity @s Pose.Head set value [-14.342f,0f,0f]
								execute if score .this aj.player.walk.frame matches 10 run data modify entity @s Pose.Head set value [-5.4432f,0f,0f]
								execute if score .this aj.player.walk.frame matches 11 run data modify entity @s Pose.Head set value [4.5243f,0f,0f]
								execute if score .this aj.player.walk.frame matches 12 run data modify entity @s Pose.Head set value [13.6035f,0f,0f]
								execute if score .this aj.player.walk.frame matches 13 run data modify entity @s Pose.Head set value [20.0119f,0f,0f]
								execute if score .this aj.player.walk.frame matches 14 run data modify entity @s Pose.Head set value [22.4912f,0f,0f]
							}
						}
					}
					# Scaling
					# Make sure rotation stays aligned with root entity
					execute positioned as @s run tp @s ~ ~ ~ ~ ~
				}
			}
			# Play scripts as root entity if scripts enabled
			execute if score .noScripts aj.i matches 0 run {
				execute if score .this aj.player.walk.frame matches 7 run {
					playsound minecraft:block.stone.step player @a ~ ~ ~ 0.125 1
				}
				execute if score .this aj.player.walk.frame matches 14 run {
					playsound minecraft:block.stone.step player @a ~ ~ ~ 0.125 1
				}
			}
			# Increment frame
			scoreboard players operation @s aj.player.walk.frame += .aj.player.framerate aj.i
			# Let the anim_loop know we're still running
			scoreboard players set .aj.animation aj.player.animating 1
			# If (the next frame is the end of the animation) perform the necessary actions for the loop mode of the animation
			execute if score .aj.player.framerate aj.i matches 1.. if score @s aj.player.walk.frame matches 15.. run function player:animations/walk/edge
			execute if score .aj.player.framerate aj.i matches ..0 if score @s aj.player.walk.frame matches ..-1 run function player:animations/walk/edge
			# execute unless score @s aj.player.walk.frame matches 0..14 run function player:animations/walk/edge
		}
		# Performs a loop mode action depending on what the animation's configured loop mode is
		function edge {
			# Play Once
			execute if score @s aj.player.walk.loopMode matches 0 run function player:animations/walk/stop
			# Hold on last frame
			execute if score @s aj.player.walk.loopMode matches 1 run function player:animations/walk/pause
			# loop
			execute if score @s aj.player.walk.loopMode matches 2 run {
				execute (if score @s aj.player.walk.frame matches ..1) {
					scoreboard players set @s aj.player.walk.frame 15
				} else {
					scoreboard players set @s aj.player.walk.frame 0
				}
			}
		}
	}
	dir start_walk {
		# Starts the animation from the first frame
		function play {
			# Make sure this function has been ran as the root entity
			execute(if entity @s[tag=aj.player.root] at @s) {
				# Add animation tag
				tag @s add aj.player.anim.start_walk
				# Reset animation time
				execute if score .aj.player.framerate aj.i matches ..-1 run scoreboard players set @s aj.player.start_walk.frame 15
				execute if score .aj.player.framerate aj.i matches 1.. run scoreboard players set @s aj.player.start_walk.frame 0
				# Assert that .noScripts is tracked properly
				scoreboard players add .noScripts aj.i 0
				# Start the animation loop if not running
				execute if score .aj.anim_loop aj.player.animating matches 0 run function player:animation_loop
				# If this entity is not the root
			} else {
				tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:animations/start_walk/play ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
			}
		}
		# Stops the animation and resets to first frame
		function stop {
			# Make sure this function has been ran as the root entity
			execute(if entity @s[tag=aj.player.root] at @s) {
				# Add animation tag
				tag @s remove aj.player.anim.start_walk
				# Reset animation time
				scoreboard players set @s aj.player.start_walk.frame 0
				# load initial animation frame without running scripts
				scoreboard players operation .oldValue aj.i = .noScripts aj.i
				scoreboard players set .noScripts aj.i 1
				function player:animations/start_walk/next_frame
				scoreboard players operation .noScripts aj.i = .oldValue aj.i
				# Reset animation time
				scoreboard players set @s aj.player.start_walk.frame 0
				# If this entity is not the root
			} else {
				tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:animations/start_walk/stop ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
			}
		}
		# Pauses the animation on the current frame
		function pause {
			# Make sure this function has been ran as the root entity
			execute(if entity @s[tag=aj.player.root] at @s) {
				# Remove animation tag
				tag @s remove aj.player.anim.start_walk
				# If this entity is not the root
			} else {
				tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:animations/start_walk/pause ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
			}
		}
		# Resumes the animation from the current frame
		function resume {
			# Make sure this function has been ran as the root entity
			execute(if entity @s[tag=aj.player.root]) {
				# Remove animation tag
				tag @s add aj.player.anim.start_walk
				# Start the animation loop
				execute if score .aj.anim_loop aj.player.animating matches 0 run function player:animation_loop
				# If this entity is not the root
			} else {
				tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:animations/start_walk/resume ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
			}
		}
		# Plays the next frame in the animation
		function next_frame {
			scoreboard players operation .this aj.id = @s aj.id
			scoreboard players operation .this aj.player.start_walk.frame = @s aj.player.start_walk.frame
			execute rotated ~ 0 as @e[type=#player:bone_entities,tag=aj.player.bone,distance=..2.531] if score @s aj.id = .this aj.id run {
				name tree/trunk
				# Bone Roots
				execute if entity @s[type=minecraft:area_effect_cloud] run {
					name tree/root_bone_name
					# Position
					execute if entity @s[tag=aj.player.bone.head] run {
						name tree/head_pos_top
						execute if score .this aj.player.start_walk.frame matches 0..14 run {
							name tree/head_pos_0-14
							execute if score .this aj.player.start_walk.frame matches 0..7 run {
								name tree/head_pos_0-7
								execute if score .this aj.player.start_walk.frame matches 0 run tp @s ^0 ^-0.50675 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 1 run tp @s ^0 ^-0.50605 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 2 run tp @s ^0 ^-0.50537 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 3 run tp @s ^0 ^-0.50469 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 4 run tp @s ^0 ^-0.50405 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 5 run tp @s ^0 ^-0.50344 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 6 run tp @s ^0 ^-0.50287 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 7 run tp @s ^0 ^-0.50235 ^0 ~ ~
							}
							execute if score .this aj.player.start_walk.frame matches 8..14 run {
								name tree/head_pos_8-14
								execute if score .this aj.player.start_walk.frame matches 8 run tp @s ^0 ^-0.50188 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 9 run tp @s ^0 ^-0.50147 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 10 run tp @s ^0 ^-0.49515 ^0.00422 ~ ~
								execute if score .this aj.player.start_walk.frame matches 11 run tp @s ^0.00002 ^-0.48602 ^0.01246 ~ ~
								execute if score .this aj.player.start_walk.frame matches 12 run tp @s ^0.00013 ^-0.4826 ^0.0229 ~ ~
								execute if score .this aj.player.start_walk.frame matches 13 run tp @s ^0.00034 ^-0.4875 ^0.03032 ~ ~
								execute if score .this aj.player.start_walk.frame matches 14 run tp @s ^0.00054 ^-0.49177 ^0.03101 ~ ~
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.body] run {
						name tree/body_pos_top
						execute if score .this aj.player.start_walk.frame matches 0..14 run {
							name tree/body_pos_0-14
							execute if score .this aj.player.start_walk.frame matches 0..7 run {
								name tree/body_pos_0-7
								execute if score .this aj.player.start_walk.frame matches 0 run tp @s ^0 ^-1.20987 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 1 run tp @s ^0 ^-1.20918 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 2 run tp @s ^0 ^-1.20849 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 3 run tp @s ^0 ^-1.20782 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 4 run tp @s ^0 ^-1.20717 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 5 run tp @s ^0 ^-1.20656 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 6 run tp @s ^0 ^-1.20599 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 7 run tp @s ^0 ^-1.20547 ^0 ~ ~
							}
							execute if score .this aj.player.start_walk.frame matches 8..14 run {
								name tree/body_pos_8-14
								execute if score .this aj.player.start_walk.frame matches 8 run tp @s ^0 ^-1.205 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 9 run tp @s ^0 ^-1.2046 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 10 run tp @s ^0 ^-1.19826 ^-0.00045 ~ ~
								execute if score .this aj.player.start_walk.frame matches 11 run tp @s ^0 ^-1.18905 ^0.00093 ~ ~
								execute if score .this aj.player.start_walk.frame matches 12 run tp @s ^0 ^-1.18547 ^0.00376 ~ ~
								execute if score .this aj.player.start_walk.frame matches 13 run tp @s ^0 ^-1.19014 ^0.00431 ~ ~
								execute if score .this aj.player.start_walk.frame matches 14 run tp @s ^0 ^-1.19423 ^0.00035 ~ ~
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.rightarm] run {
						name tree/rightarm_pos_top
						execute if score .this aj.player.start_walk.frame matches 0..14 run {
							name tree/rightarm_pos_0-14
							execute if score .this aj.player.start_walk.frame matches 0..7 run {
								name tree/rightarm_pos_0-7
								execute if score .this aj.player.start_walk.frame matches 0 run tp @s ^-0.29297 ^-0.62394 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 1 run tp @s ^-0.29297 ^-0.62324 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 2 run tp @s ^-0.29297 ^-0.62255 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 3 run tp @s ^-0.29297 ^-0.62188 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 4 run tp @s ^-0.29297 ^-0.62124 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 5 run tp @s ^-0.29297 ^-0.62063 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 6 run tp @s ^-0.29297 ^-0.62006 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 7 run tp @s ^-0.29297 ^-0.61953 ^0 ~ ~
							}
							execute if score .this aj.player.start_walk.frame matches 8..14 run {
								name tree/rightarm_pos_8-14
								execute if score .this aj.player.start_walk.frame matches 8 run tp @s ^-0.29297 ^-0.61907 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 9 run tp @s ^-0.29297 ^-0.61866 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 10 run tp @s ^-0.29297 ^-0.61234 ^0.00325 ~ ~
								execute if score .this aj.player.start_walk.frame matches 11 run tp @s ^-0.29296 ^-0.60319 ^0.01092 ~ ~
								execute if score .this aj.player.start_walk.frame matches 12 run tp @s ^-0.29286 ^-0.59974 ^0.02164 ~ ~
								execute if score .this aj.player.start_walk.frame matches 13 run tp @s ^-0.29266 ^-0.60461 ^0.02984 ~ ~
								execute if score .this aj.player.start_walk.frame matches 14 run tp @s ^-0.29248 ^-0.60885 ^0.03101 ~ ~
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.leftarm] run {
						name tree/leftarm_pos_top
						execute if score .this aj.player.start_walk.frame matches 0..14 run {
							name tree/leftarm_pos_0-14
							execute if score .this aj.player.start_walk.frame matches 0..7 run {
								name tree/leftarm_pos_0-7
								execute if score .this aj.player.start_walk.frame matches 0 run tp @s ^0.29297 ^-0.62394 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 1 run tp @s ^0.29297 ^-0.62324 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 2 run tp @s ^0.29297 ^-0.62255 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 3 run tp @s ^0.29297 ^-0.62188 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 4 run tp @s ^0.29297 ^-0.62124 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 5 run tp @s ^0.29297 ^-0.62063 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 6 run tp @s ^0.29297 ^-0.62006 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 7 run tp @s ^0.29297 ^-0.61953 ^0 ~ ~
							}
							execute if score .this aj.player.start_walk.frame matches 8..14 run {
								name tree/leftarm_pos_8-14
								execute if score .this aj.player.start_walk.frame matches 8 run tp @s ^0.29297 ^-0.61907 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 9 run tp @s ^0.29297 ^-0.61866 ^0 ~ ~
								execute if score .this aj.player.start_walk.frame matches 10 run tp @s ^0.29297 ^-0.61234 ^0.00363 ~ ~
								execute if score .this aj.player.start_walk.frame matches 11 run tp @s ^0.29298 ^-0.60319 ^0.01015 ~ ~
								execute if score .this aj.player.start_walk.frame matches 12 run tp @s ^0.29307 ^-0.59974 ^0.01778 ~ ~
								execute if score .this aj.player.start_walk.frame matches 13 run tp @s ^0.29323 ^-0.60461 ^0.02213 ~ ~
								execute if score .this aj.player.start_walk.frame matches 14 run tp @s ^0.29337 ^-0.60885 ^0.02079 ~ ~
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.rightleg] run {
						name tree/rightleg_pos_top
						execute if score .this aj.player.start_walk.frame matches 0..14 run {
							name tree/rightleg_pos_0-14
							execute if score .this aj.player.start_walk.frame matches 0..7 run {
								name tree/rightleg_pos_0-7
								execute if score .this aj.player.start_walk.frame matches 0 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.start_walk.frame matches 1 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.start_walk.frame matches 2 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.start_walk.frame matches 3 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.start_walk.frame matches 4 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.start_walk.frame matches 5 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.start_walk.frame matches 6 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.start_walk.frame matches 7 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
							}
							execute if score .this aj.player.start_walk.frame matches 8..14 run {
								name tree/rightleg_pos_8-14
								execute if score .this aj.player.start_walk.frame matches 8 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.start_walk.frame matches 9 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.start_walk.frame matches 10 run tp @s ^-0.11133 ^-1.19144 ^-0.0086 ~ ~
								execute if score .this aj.player.start_walk.frame matches 11 run tp @s ^-0.11133 ^-1.16383 ^-0.00021 ~ ~
								execute if score .this aj.player.start_walk.frame matches 12 run tp @s ^-0.11133 ^-1.14775 ^0.02148 ~ ~
								execute if score .this aj.player.start_walk.frame matches 13 run tp @s ^-0.11133 ^-1.16142 ^0.04559 ~ ~
								execute if score .this aj.player.start_walk.frame matches 14 run tp @s ^-0.11133 ^-1.20638 ^0.05697 ~ ~
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.leftleg] run {
						name tree/leftleg_pos_top
						execute if score .this aj.player.start_walk.frame matches 0..14 run {
							name tree/leftleg_pos_0-14
							execute if score .this aj.player.start_walk.frame matches 0..7 run {
								name tree/leftleg_pos_0-7
								execute if score .this aj.player.start_walk.frame matches 0 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.start_walk.frame matches 1 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.start_walk.frame matches 2 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.start_walk.frame matches 3 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.start_walk.frame matches 4 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.start_walk.frame matches 5 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.start_walk.frame matches 6 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.start_walk.frame matches 7 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
							}
							execute if score .this aj.player.start_walk.frame matches 8..14 run {
								name tree/leftleg_pos_8-14
								execute if score .this aj.player.start_walk.frame matches 8 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.start_walk.frame matches 9 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.start_walk.frame matches 10 run tp @s ^0.11133 ^-1.20987 ^-0.00401 ~ ~
								execute if score .this aj.player.start_walk.frame matches 11 run tp @s ^0.11133 ^-1.20987 ^-0.00966 ~ ~
								execute if score .this aj.player.start_walk.frame matches 12 run tp @s ^0.11133 ^-1.20987 ^-0.02568 ~ ~
								execute if score .this aj.player.start_walk.frame matches 13 run tp @s ^0.11133 ^-1.20987 ^-0.04869 ~ ~
								execute if score .this aj.player.start_walk.frame matches 14 run tp @s ^0.11133 ^-1.20987 ^-0.06799 ~ ~
							}
						}
					}
					execute store result entity @s Air short 1 run scoreboard players get .this aj.player.start_walk.frame
				}
				# Bone Displays
				execute if entity @s[type=minecraft:armor_stand] run {
					name tree/display_bone_name
					# Rotation
					execute if entity @s[tag=aj.player.bone.head] run {
						name tree/head_rot_top
						execute if score .this aj.player.start_walk.frame matches 0..14 run {
							name tree/head_rot_0-14
							execute if score .this aj.player.start_walk.frame matches 0 run data modify entity @s Pose.Head set value [0f,0f,0f]
							execute if score .this aj.player.start_walk.frame matches 8..14 run {
								name tree/head_rot_8-14
								execute if score .this aj.player.start_walk.frame matches 9 run data modify entity @s Pose.Head set value [0f,0f,0f]
								execute if score .this aj.player.start_walk.frame matches 10 run data modify entity @s Pose.Head set value [0.38f,0f,-0.0002f]
								execute if score .this aj.player.start_walk.frame matches 11 run data modify entity @s Pose.Head set value [0.94f,0f,0.0012f]
								execute if score .this aj.player.start_walk.frame matches 12 run data modify entity @s Pose.Head set value [1.56f,-0.0001f,0.0103f]
								execute if score .this aj.player.start_walk.frame matches 13 run data modify entity @s Pose.Head set value [2.1198f,-0.0005f,0.0279f]
								execute if score .this aj.player.start_walk.frame matches 14 run data modify entity @s Pose.Head set value [2.4996f,-0.001f,0.0436f]
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.body] run {
						name tree/body_rot_top
						execute if score .this aj.player.start_walk.frame matches 0..14 run {
							name tree/body_rot_0-14
							execute if score .this aj.player.start_walk.frame matches 0 run data modify entity @s Pose.Head set value [0f,0f,0f]
							execute if score .this aj.player.start_walk.frame matches 8..14 run {
								name tree/body_rot_8-14
								execute if score .this aj.player.start_walk.frame matches 9 run data modify entity @s Pose.Head set value [0f,0f,0f]
								execute if score .this aj.player.start_walk.frame matches 10 run data modify entity @s Pose.Head set value [0.38f,0.0368f,0f]
								execute if score .this aj.player.start_walk.frame matches 11 run data modify entity @s Pose.Head set value [0.94f,-0.0756f,0f]
								execute if score .this aj.player.start_walk.frame matches 12 run data modify entity @s Pose.Head set value [1.56f,-0.3773f,0f]
								execute if score .this aj.player.start_walk.frame matches 13 run data modify entity @s Pose.Head set value [2.12f,-0.7542f,0f]
								execute if score .this aj.player.start_walk.frame matches 14 run data modify entity @s Pose.Head set value [2.5f,-0.9996f,0f]
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.rightarm] run {
						name tree/rightarm_rot_top
						execute if score .this aj.player.start_walk.frame matches 0..14 run {
							name tree/rightarm_rot_0-14
							execute if score .this aj.player.start_walk.frame matches 0..7 run {
								name tree/rightarm_rot_0-7
								execute if score .this aj.player.start_walk.frame matches 0 run data modify entity @s Pose.Head set value [0f,0f,0f]
								execute if score .this aj.player.start_walk.frame matches 1 run data modify entity @s Pose.Head set value [-0.2229f,0f,0.0125f]
								execute if score .this aj.player.start_walk.frame matches 2 run data modify entity @s Pose.Head set value [-0.4431f,0f,0.0497f]
								execute if score .this aj.player.start_walk.frame matches 3 run data modify entity @s Pose.Head set value [-0.6577f,0f,0.1112f]
								execute if score .this aj.player.start_walk.frame matches 4 run data modify entity @s Pose.Head set value [-0.8642f,0f,0.1963f]
								execute if score .this aj.player.start_walk.frame matches 5 run data modify entity @s Pose.Head set value [-1.0598f,0f,0.3039f]
								execute if score .this aj.player.start_walk.frame matches 6 run data modify entity @s Pose.Head set value [-1.2423f,0f,0.4326f]
								execute if score .this aj.player.start_walk.frame matches 7 run data modify entity @s Pose.Head set value [-1.4093f,0f,0.5809f]
							}
							execute if score .this aj.player.start_walk.frame matches 8..14 run {
								name tree/rightarm_rot_8-14
								execute if score .this aj.player.start_walk.frame matches 8 run data modify entity @s Pose.Head set value [-1.5587f,0f,0.7468f]
								execute if score .this aj.player.start_walk.frame matches 9 run data modify entity @s Pose.Head set value [-1.6887f,0f,0.9283f]
								execute if score .this aj.player.start_walk.frame matches 10 run data modify entity @s Pose.Head set value [-1.9712f,0.0305f,0.9525f]
								execute if score .this aj.player.start_walk.frame matches 11 run data modify entity @s Pose.Head set value [1.4642f,-0.0892f,0.8292f]
								execute if score .this aj.player.start_walk.frame matches 12 run data modify entity @s Pose.Head set value [9.3125f,-0.393f,0.5801f]
								execute if score .this aj.player.start_walk.frame matches 13 run data modify entity @s Pose.Head set value [18.7847f,-0.7641f,0.2678f]
								execute if score .this aj.player.start_walk.frame matches 14 run data modify entity @s Pose.Head set value [24.9912f,-0.9996f,0f]
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.leftarm] run {
						name tree/leftarm_rot_top
						execute if score .this aj.player.start_walk.frame matches 0..14 run {
							name tree/leftarm_rot_0-14
							execute if score .this aj.player.start_walk.frame matches 0..7 run {
								name tree/leftarm_rot_0-7
								execute if score .this aj.player.start_walk.frame matches 0 run data modify entity @s Pose.Head set value [0f,0f,0f]
								execute if score .this aj.player.start_walk.frame matches 1 run data modify entity @s Pose.Head set value [0.2229f,0f,-0.0125f]
								execute if score .this aj.player.start_walk.frame matches 2 run data modify entity @s Pose.Head set value [0.4431f,0f,-0.0497f]
								execute if score .this aj.player.start_walk.frame matches 3 run data modify entity @s Pose.Head set value [0.6577f,0f,-0.1112f]
								execute if score .this aj.player.start_walk.frame matches 4 run data modify entity @s Pose.Head set value [0.8642f,0f,-0.1963f]
								execute if score .this aj.player.start_walk.frame matches 5 run data modify entity @s Pose.Head set value [1.0598f,0f,-0.3039f]
								execute if score .this aj.player.start_walk.frame matches 6 run data modify entity @s Pose.Head set value [1.2423f,0f,-0.4326f]
								execute if score .this aj.player.start_walk.frame matches 7 run data modify entity @s Pose.Head set value [1.4093f,0f,-0.5809f]
							}
							execute if score .this aj.player.start_walk.frame matches 8..14 run {
								name tree/leftarm_rot_8-14
								execute if score .this aj.player.start_walk.frame matches 8 run data modify entity @s Pose.Head set value [1.5587f,0f,-0.7468f]
								execute if score .this aj.player.start_walk.frame matches 9 run data modify entity @s Pose.Head set value [1.6887f,0f,-0.9283f]
								execute if score .this aj.player.start_walk.frame matches 10 run data modify entity @s Pose.Head set value [2.7311f,0.0431f,-0.9525f]
								execute if score .this aj.player.start_walk.frame matches 11 run data modify entity @s Pose.Head set value [0.4156f,-0.062f,-0.8292f]
								execute if score .this aj.player.start_walk.frame matches 12 run data modify entity @s Pose.Head set value [-6.1927f,-0.3615f,-0.5801f]
								execute if score .this aj.player.start_walk.frame matches 13 run data modify entity @s Pose.Head set value [-14.5447f,-0.7443f,-0.2678f]
								execute if score .this aj.player.start_walk.frame matches 14 run data modify entity @s Pose.Head set value [-19.9912f,-0.9996f,0f]
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.rightleg] run {
						name tree/rightleg_rot_top
						execute if score .this aj.player.start_walk.frame matches 0..14 run {
							name tree/rightleg_rot_0-14
							execute if score .this aj.player.start_walk.frame matches 0 run data modify entity @s Pose.Head set value [-2.5f,0f,2.5f]
							execute if score .this aj.player.start_walk.frame matches 8..14 run {
								name tree/rightleg_rot_8-14
								execute if score .this aj.player.start_walk.frame matches 9 run data modify entity @s Pose.Head set value [-2.5f,0f,2.5f]
								execute if score .this aj.player.start_walk.frame matches 10 run data modify entity @s Pose.Head set value [-1.2926f,0f,2.12f]
								execute if score .this aj.player.start_walk.frame matches 11 run data modify entity @s Pose.Head set value [-3.2611f,0f,1.56f]
								execute if score .this aj.player.start_walk.frame matches 12 run data modify entity @s Pose.Head set value [-9.4286f,0f,0.94f]
								execute if score .this aj.player.start_walk.frame matches 13 run data modify entity @s Pose.Head set value [-17.3501f,0f,0.38f]
								execute if score .this aj.player.start_walk.frame matches 14 run data modify entity @s Pose.Head set value [-22.4912f,0f,0f]
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.leftleg] run {
						name tree/leftleg_rot_top
						execute if score .this aj.player.start_walk.frame matches 0..14 run {
							name tree/leftleg_rot_0-14
							execute if score .this aj.player.start_walk.frame matches 0 run data modify entity @s Pose.Head set value [4.9953f,0.2178f,-2.4905f]
							execute if score .this aj.player.start_walk.frame matches 8..14 run {
								name tree/leftleg_rot_8-14
								execute if score .this aj.player.start_walk.frame matches 9 run data modify entity @s Pose.Head set value [4.9953f,0.2178f,-2.4905f]
								execute if score .this aj.player.start_walk.frame matches 10 run data modify entity @s Pose.Head set value [3.4086f,0.1847f,-2.1119f]
								execute if score .this aj.player.start_walk.frame matches 11 run data modify entity @s Pose.Head set value [4.8182f,0.1359f,-1.5541f]
								execute if score .this aj.player.start_walk.frame matches 12 run data modify entity @s Pose.Head set value [10.3668f,0.0819f,-0.9364f]
								execute if score .this aj.player.start_walk.frame matches 13 run data modify entity @s Pose.Head set value [17.7293f,0.0331f,-0.3786f]
								execute if score .this aj.player.start_walk.frame matches 14 run data modify entity @s Pose.Head set value [22.4912f,0f,0f]
							}
						}
					}
					# Scaling
					# Make sure rotation stays aligned with root entity
					execute positioned as @s run tp @s ~ ~ ~ ~ ~
				}
			}
			# Play scripts as root entity if scripts enabled
			execute if score .noScripts aj.i matches 0 run {
				execute if score .this aj.player.start_walk.frame matches 10 run {
					scoreboard players operation @s ex.state = .FOLLOWING_PATH ex.state
				}
				execute if score .this aj.player.start_walk.frame matches 14 run {
					playsound minecraft:block.stone.step player @a ~ ~ ~ 0.125 1
					function player:animations/start_walk/pause
					function player:animations/walk/play
				}
			}
			# Increment frame
			scoreboard players operation @s aj.player.start_walk.frame += .aj.player.framerate aj.i
			# Let the anim_loop know we're still running
			scoreboard players set .aj.animation aj.player.animating 1
			# If (the next frame is the end of the animation) perform the necessary actions for the loop mode of the animation
			execute if score .aj.player.framerate aj.i matches 1.. if score @s aj.player.start_walk.frame matches 15.. run function player:animations/start_walk/edge
			execute if score .aj.player.framerate aj.i matches ..0 if score @s aj.player.start_walk.frame matches ..-1 run function player:animations/start_walk/edge
			# execute unless score @s aj.player.start_walk.frame matches 0..14 run function player:animations/start_walk/edge
		}
		# Performs a loop mode action depending on what the animation's configured loop mode is
		function edge {
			# Play Once
			execute if score @s aj.player.start_walk.loopMode matches 0 run function player:animations/start_walk/stop
			# Hold on last frame
			execute if score @s aj.player.start_walk.loopMode matches 1 run function player:animations/start_walk/pause
			# loop
			execute if score @s aj.player.start_walk.loopMode matches 2 run {
				execute (if score @s aj.player.start_walk.frame matches ..1) {
					scoreboard players set @s aj.player.start_walk.frame 15
				} else {
					scoreboard players set @s aj.player.start_walk.frame 0
				}
			}
		}
	}
	dir idle {
		# Starts the animation from the first frame
		function play {
			# Make sure this function has been ran as the root entity
			execute(if entity @s[tag=aj.player.root] at @s) {
				# Add animation tag
				tag @s add aj.player.anim.idle
				# Reset animation time
				execute if score .aj.player.framerate aj.i matches ..-1 run scoreboard players set @s aj.player.idle.frame 58
				execute if score .aj.player.framerate aj.i matches 1.. run scoreboard players set @s aj.player.idle.frame 0
				# Assert that .noScripts is tracked properly
				scoreboard players add .noScripts aj.i 0
				# Start the animation loop if not running
				execute if score .aj.anim_loop aj.player.animating matches 0 run function player:animation_loop
				# If this entity is not the root
			} else {
				tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:animations/idle/play ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
			}
		}
		# Stops the animation and resets to first frame
		function stop {
			# Make sure this function has been ran as the root entity
			execute(if entity @s[tag=aj.player.root] at @s) {
				# Add animation tag
				tag @s remove aj.player.anim.idle
				# Reset animation time
				scoreboard players set @s aj.player.idle.frame 0
				# load initial animation frame without running scripts
				scoreboard players operation .oldValue aj.i = .noScripts aj.i
				scoreboard players set .noScripts aj.i 1
				function player:animations/idle/next_frame
				scoreboard players operation .noScripts aj.i = .oldValue aj.i
				# Reset animation time
				scoreboard players set @s aj.player.idle.frame 0
				# If this entity is not the root
			} else {
				tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:animations/idle/stop ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
			}
		}
		# Pauses the animation on the current frame
		function pause {
			# Make sure this function has been ran as the root entity
			execute(if entity @s[tag=aj.player.root] at @s) {
				# Remove animation tag
				tag @s remove aj.player.anim.idle
				# If this entity is not the root
			} else {
				tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:animations/idle/pause ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
			}
		}
		# Resumes the animation from the current frame
		function resume {
			# Make sure this function has been ran as the root entity
			execute(if entity @s[tag=aj.player.root]) {
				# Remove animation tag
				tag @s add aj.player.anim.idle
				# Start the animation loop
				execute if score .aj.anim_loop aj.player.animating matches 0 run function player:animation_loop
				# If this entity is not the root
			} else {
				tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:animations/idle/resume ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
			}
		}
		# Plays the next frame in the animation
		function next_frame {
			scoreboard players operation .this aj.id = @s aj.id
			scoreboard players operation .this aj.player.idle.frame = @s aj.player.idle.frame
			execute rotated ~ 0 as @e[type=#player:bone_entities,tag=aj.player.bone,distance=..2.513] if score @s aj.id = .this aj.id run {
				name tree/trunk
				# Bone Roots
				execute if entity @s[type=minecraft:area_effect_cloud] run {
					name tree/root_bone_name
					# Position
					execute if entity @s[tag=aj.player.bone.head] run {
						name tree/head_pos_top
						execute if score .this aj.player.idle.frame matches 0..57 run {
							name tree/head_pos_0-57
							execute if score .this aj.player.idle.frame matches 0..7 run {
								name tree/head_pos_0-7
								execute if score .this aj.player.idle.frame matches 0 run tp @s ^0 ^-0.50675 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 1 run tp @s ^0 ^-0.50605 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 2 run tp @s ^0 ^-0.50537 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 3 run tp @s ^0 ^-0.50469 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 4 run tp @s ^0 ^-0.50405 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 5 run tp @s ^0 ^-0.50344 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 6 run tp @s ^0 ^-0.50287 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 7 run tp @s ^0 ^-0.50235 ^0 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 8..15 run {
								name tree/head_pos_8-15
								execute if score .this aj.player.idle.frame matches 8 run tp @s ^0 ^-0.50188 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 9 run tp @s ^0 ^-0.50147 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 10 run tp @s ^0 ^-0.50113 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 11 run tp @s ^0 ^-0.50086 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 12 run tp @s ^0 ^-0.50067 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 13 run tp @s ^0 ^-0.50054 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 14 run tp @s ^0 ^-0.5005 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 15 run tp @s ^0 ^-0.50053 ^0 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 16..23 run {
								name tree/head_pos_16-23
								execute if score .this aj.player.idle.frame matches 16 run tp @s ^0 ^-0.50065 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 17 run tp @s ^0 ^-0.50083 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 18 run tp @s ^0 ^-0.50109 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 19 run tp @s ^0 ^-0.50143 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 20 run tp @s ^0 ^-0.50182 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 21 run tp @s ^0 ^-0.50228 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 22 run tp @s ^0 ^-0.5028 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 23 run tp @s ^0 ^-0.50336 ^0 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 24..31 run {
								name tree/head_pos_24-31
								execute if score .this aj.player.idle.frame matches 24 run tp @s ^0 ^-0.50397 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 25 run tp @s ^0 ^-0.50461 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 26 run tp @s ^0 ^-0.50528 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 27 run tp @s ^0 ^-0.50597 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 28 run tp @s ^0 ^-0.50666 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 29 run tp @s ^0 ^-0.50736 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 30 run tp @s ^0 ^-0.50805 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 31 run tp @s ^0 ^-0.50872 ^0 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 32..39 run {
								name tree/head_pos_32-39
								execute if score .this aj.player.idle.frame matches 32 run tp @s ^0 ^-0.50937 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 33 run tp @s ^0 ^-0.50999 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 34 run tp @s ^0 ^-0.51056 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 35 run tp @s ^0 ^-0.51109 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 36 run tp @s ^0 ^-0.51157 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 37 run tp @s ^0 ^-0.51198 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 38 run tp @s ^0 ^-0.51233 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 39 run tp @s ^0 ^-0.51261 ^0 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 40..47 run {
								name tree/head_pos_40-47
								execute if score .this aj.player.idle.frame matches 40 run tp @s ^0 ^-0.51281 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 41 run tp @s ^0 ^-0.51295 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 42 run tp @s ^0 ^-0.513 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 43 run tp @s ^0 ^-0.51297 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 44 run tp @s ^0 ^-0.51287 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 45 run tp @s ^0 ^-0.51269 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 46 run tp @s ^0 ^-0.51244 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 47 run tp @s ^0 ^-0.51212 ^0 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 48..55 run {
								name tree/head_pos_48-55
								execute if score .this aj.player.idle.frame matches 48 run tp @s ^0 ^-0.51173 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 49 run tp @s ^0 ^-0.51128 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 50 run tp @s ^0 ^-0.51077 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 51 run tp @s ^0 ^-0.51021 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 52 run tp @s ^0 ^-0.50961 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 53 run tp @s ^0 ^-0.50897 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 54 run tp @s ^0 ^-0.5083 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 55 run tp @s ^0 ^-0.50762 ^0 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 56..57 run {
								name tree/head_pos_56-57
								execute if score .this aj.player.idle.frame matches 56 run tp @s ^0 ^-0.50692 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 57 run tp @s ^0 ^-0.50623 ^0 ~ ~
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.body] run {
						name tree/body_pos_top
						execute if score .this aj.player.idle.frame matches 0..57 run {
							name tree/body_pos_0-57
							execute if score .this aj.player.idle.frame matches 0..7 run {
								name tree/body_pos_0-7
								execute if score .this aj.player.idle.frame matches 0 run tp @s ^0 ^-1.20987 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 1 run tp @s ^0 ^-1.20918 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 2 run tp @s ^0 ^-1.20849 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 3 run tp @s ^0 ^-1.20782 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 4 run tp @s ^0 ^-1.20717 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 5 run tp @s ^0 ^-1.20656 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 6 run tp @s ^0 ^-1.20599 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 7 run tp @s ^0 ^-1.20547 ^0 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 8..15 run {
								name tree/body_pos_8-15
								execute if score .this aj.player.idle.frame matches 8 run tp @s ^0 ^-1.205 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 9 run tp @s ^0 ^-1.2046 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 10 run tp @s ^0 ^-1.20426 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 11 run tp @s ^0 ^-1.20399 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 12 run tp @s ^0 ^-1.20379 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 13 run tp @s ^0 ^-1.20367 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 14 run tp @s ^0 ^-1.20363 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 15 run tp @s ^0 ^-1.20366 ^0 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 16..23 run {
								name tree/body_pos_16-23
								execute if score .this aj.player.idle.frame matches 16 run tp @s ^0 ^-1.20377 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 17 run tp @s ^0 ^-1.20396 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 18 run tp @s ^0 ^-1.20422 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 19 run tp @s ^0 ^-1.20455 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 20 run tp @s ^0 ^-1.20495 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 21 run tp @s ^0 ^-1.20541 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 22 run tp @s ^0 ^-1.20592 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 23 run tp @s ^0 ^-1.20649 ^0 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 24..31 run {
								name tree/body_pos_24-31
								execute if score .this aj.player.idle.frame matches 24 run tp @s ^0 ^-1.2071 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 25 run tp @s ^0 ^-1.20774 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 26 run tp @s ^0 ^-1.20841 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 27 run tp @s ^0 ^-1.20909 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 28 run tp @s ^0 ^-1.20979 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 29 run tp @s ^0 ^-1.21048 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 30 run tp @s ^0 ^-1.21117 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 31 run tp @s ^0 ^-1.21185 ^0 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 32..39 run {
								name tree/body_pos_32-39
								execute if score .this aj.player.idle.frame matches 32 run tp @s ^0 ^-1.2125 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 33 run tp @s ^0 ^-1.21311 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 34 run tp @s ^0 ^-1.21369 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 35 run tp @s ^0 ^-1.21422 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 36 run tp @s ^0 ^-1.21469 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 37 run tp @s ^0 ^-1.2151 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 38 run tp @s ^0 ^-1.21545 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 39 run tp @s ^0 ^-1.21573 ^0 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 40..47 run {
								name tree/body_pos_40-47
								execute if score .this aj.player.idle.frame matches 40 run tp @s ^0 ^-1.21594 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 41 run tp @s ^0 ^-1.21607 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 42 run tp @s ^0 ^-1.21612 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 43 run tp @s ^0 ^-1.2161 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 44 run tp @s ^0 ^-1.216 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 45 run tp @s ^0 ^-1.21582 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 46 run tp @s ^0 ^-1.21557 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 47 run tp @s ^0 ^-1.21524 ^0 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 48..55 run {
								name tree/body_pos_48-55
								execute if score .this aj.player.idle.frame matches 48 run tp @s ^0 ^-1.21485 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 49 run tp @s ^0 ^-1.2144 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 50 run tp @s ^0 ^-1.21389 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 51 run tp @s ^0 ^-1.21333 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 52 run tp @s ^0 ^-1.21273 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 53 run tp @s ^0 ^-1.21209 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 54 run tp @s ^0 ^-1.21143 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 55 run tp @s ^0 ^-1.21074 ^0 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 56..57 run {
								name tree/body_pos_56-57
								execute if score .this aj.player.idle.frame matches 56 run tp @s ^0 ^-1.21005 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 57 run tp @s ^0 ^-1.20935 ^0 ~ ~
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.rightarm] run {
						name tree/rightarm_pos_top
						execute if score .this aj.player.idle.frame matches 0..57 run {
							name tree/rightarm_pos_0-57
							execute if score .this aj.player.idle.frame matches 0..7 run {
								name tree/rightarm_pos_0-7
								execute if score .this aj.player.idle.frame matches 0 run tp @s ^-0.29297 ^-0.62394 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 1 run tp @s ^-0.29297 ^-0.62324 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 2 run tp @s ^-0.29297 ^-0.62255 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 3 run tp @s ^-0.29297 ^-0.62188 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 4 run tp @s ^-0.29297 ^-0.62124 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 5 run tp @s ^-0.29297 ^-0.62063 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 6 run tp @s ^-0.29297 ^-0.62006 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 7 run tp @s ^-0.29297 ^-0.61953 ^0 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 8..15 run {
								name tree/rightarm_pos_8-15
								execute if score .this aj.player.idle.frame matches 8 run tp @s ^-0.29297 ^-0.61907 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 9 run tp @s ^-0.29297 ^-0.61866 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 10 run tp @s ^-0.29297 ^-0.61832 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 11 run tp @s ^-0.29297 ^-0.61805 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 12 run tp @s ^-0.29297 ^-0.61785 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 13 run tp @s ^-0.29297 ^-0.61773 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 14 run tp @s ^-0.29297 ^-0.61769 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 15 run tp @s ^-0.29297 ^-0.61772 ^0 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 16..23 run {
								name tree/rightarm_pos_16-23
								execute if score .this aj.player.idle.frame matches 16 run tp @s ^-0.29297 ^-0.61783 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 17 run tp @s ^-0.29297 ^-0.61802 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 18 run tp @s ^-0.29297 ^-0.61828 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 19 run tp @s ^-0.29297 ^-0.61861 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 20 run tp @s ^-0.29297 ^-0.61901 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 21 run tp @s ^-0.29297 ^-0.61947 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 22 run tp @s ^-0.29297 ^-0.61999 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 23 run tp @s ^-0.29297 ^-0.62055 ^0 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 24..31 run {
								name tree/rightarm_pos_24-31
								execute if score .this aj.player.idle.frame matches 24 run tp @s ^-0.29297 ^-0.62116 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 25 run tp @s ^-0.29297 ^-0.6218 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 26 run tp @s ^-0.29297 ^-0.62247 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 27 run tp @s ^-0.29297 ^-0.62315 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 28 run tp @s ^-0.29297 ^-0.62385 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 29 run tp @s ^-0.29297 ^-0.62455 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 30 run tp @s ^-0.29297 ^-0.62524 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 31 run tp @s ^-0.29297 ^-0.62591 ^0 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 32..39 run {
								name tree/rightarm_pos_32-39
								execute if score .this aj.player.idle.frame matches 32 run tp @s ^-0.29297 ^-0.62656 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 33 run tp @s ^-0.29297 ^-0.62718 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 34 run tp @s ^-0.29297 ^-0.62775 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 35 run tp @s ^-0.29297 ^-0.62828 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 36 run tp @s ^-0.29297 ^-0.62875 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 37 run tp @s ^-0.29297 ^-0.62917 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 38 run tp @s ^-0.29297 ^-0.62952 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 39 run tp @s ^-0.29297 ^-0.6298 ^0 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 40..47 run {
								name tree/rightarm_pos_40-47
								execute if score .this aj.player.idle.frame matches 40 run tp @s ^-0.29297 ^-0.63 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 41 run tp @s ^-0.29297 ^-0.63013 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 42 run tp @s ^-0.29297 ^-0.63019 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 43 run tp @s ^-0.29297 ^-0.63016 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 44 run tp @s ^-0.29297 ^-0.63006 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 45 run tp @s ^-0.29297 ^-0.62988 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 46 run tp @s ^-0.29297 ^-0.62963 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 47 run tp @s ^-0.29297 ^-0.62931 ^0 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 48..55 run {
								name tree/rightarm_pos_48-55
								execute if score .this aj.player.idle.frame matches 48 run tp @s ^-0.29297 ^-0.62892 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 49 run tp @s ^-0.29297 ^-0.62846 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 50 run tp @s ^-0.29297 ^-0.62795 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 51 run tp @s ^-0.29297 ^-0.6274 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 52 run tp @s ^-0.29297 ^-0.62679 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 53 run tp @s ^-0.29297 ^-0.62616 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 54 run tp @s ^-0.29297 ^-0.62549 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 55 run tp @s ^-0.29297 ^-0.62481 ^0 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 56..57 run {
								name tree/rightarm_pos_56-57
								execute if score .this aj.player.idle.frame matches 56 run tp @s ^-0.29297 ^-0.62411 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 57 run tp @s ^-0.29297 ^-0.62341 ^0 ~ ~
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.leftarm] run {
						name tree/leftarm_pos_top
						execute if score .this aj.player.idle.frame matches 0..57 run {
							name tree/leftarm_pos_0-57
							execute if score .this aj.player.idle.frame matches 0..7 run {
								name tree/leftarm_pos_0-7
								execute if score .this aj.player.idle.frame matches 0 run tp @s ^0.29297 ^-0.62394 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 1 run tp @s ^0.29297 ^-0.62324 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 2 run tp @s ^0.29297 ^-0.62255 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 3 run tp @s ^0.29297 ^-0.62188 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 4 run tp @s ^0.29297 ^-0.62124 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 5 run tp @s ^0.29297 ^-0.62063 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 6 run tp @s ^0.29297 ^-0.62006 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 7 run tp @s ^0.29297 ^-0.61953 ^0 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 8..15 run {
								name tree/leftarm_pos_8-15
								execute if score .this aj.player.idle.frame matches 8 run tp @s ^0.29297 ^-0.61907 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 9 run tp @s ^0.29297 ^-0.61866 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 10 run tp @s ^0.29297 ^-0.61832 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 11 run tp @s ^0.29297 ^-0.61805 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 12 run tp @s ^0.29297 ^-0.61785 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 13 run tp @s ^0.29297 ^-0.61773 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 14 run tp @s ^0.29297 ^-0.61769 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 15 run tp @s ^0.29297 ^-0.61772 ^0 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 16..23 run {
								name tree/leftarm_pos_16-23
								execute if score .this aj.player.idle.frame matches 16 run tp @s ^0.29297 ^-0.61783 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 17 run tp @s ^0.29297 ^-0.61802 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 18 run tp @s ^0.29297 ^-0.61828 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 19 run tp @s ^0.29297 ^-0.61861 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 20 run tp @s ^0.29297 ^-0.61901 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 21 run tp @s ^0.29297 ^-0.61947 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 22 run tp @s ^0.29297 ^-0.61999 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 23 run tp @s ^0.29297 ^-0.62055 ^0 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 24..31 run {
								name tree/leftarm_pos_24-31
								execute if score .this aj.player.idle.frame matches 24 run tp @s ^0.29297 ^-0.62116 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 25 run tp @s ^0.29297 ^-0.6218 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 26 run tp @s ^0.29297 ^-0.62247 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 27 run tp @s ^0.29297 ^-0.62315 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 28 run tp @s ^0.29297 ^-0.62385 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 29 run tp @s ^0.29297 ^-0.62455 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 30 run tp @s ^0.29297 ^-0.62524 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 31 run tp @s ^0.29297 ^-0.62591 ^0 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 32..39 run {
								name tree/leftarm_pos_32-39
								execute if score .this aj.player.idle.frame matches 32 run tp @s ^0.29297 ^-0.62656 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 33 run tp @s ^0.29297 ^-0.62718 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 34 run tp @s ^0.29297 ^-0.62775 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 35 run tp @s ^0.29297 ^-0.62828 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 36 run tp @s ^0.29297 ^-0.62875 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 37 run tp @s ^0.29297 ^-0.62917 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 38 run tp @s ^0.29297 ^-0.62952 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 39 run tp @s ^0.29297 ^-0.6298 ^0 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 40..47 run {
								name tree/leftarm_pos_40-47
								execute if score .this aj.player.idle.frame matches 40 run tp @s ^0.29297 ^-0.63 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 41 run tp @s ^0.29297 ^-0.63013 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 42 run tp @s ^0.29297 ^-0.63019 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 43 run tp @s ^0.29297 ^-0.63016 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 44 run tp @s ^0.29297 ^-0.63006 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 45 run tp @s ^0.29297 ^-0.62988 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 46 run tp @s ^0.29297 ^-0.62963 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 47 run tp @s ^0.29297 ^-0.62931 ^0 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 48..55 run {
								name tree/leftarm_pos_48-55
								execute if score .this aj.player.idle.frame matches 48 run tp @s ^0.29297 ^-0.62892 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 49 run tp @s ^0.29297 ^-0.62846 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 50 run tp @s ^0.29297 ^-0.62795 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 51 run tp @s ^0.29297 ^-0.6274 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 52 run tp @s ^0.29297 ^-0.62679 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 53 run tp @s ^0.29297 ^-0.62616 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 54 run tp @s ^0.29297 ^-0.62549 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 55 run tp @s ^0.29297 ^-0.62481 ^0 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 56..57 run {
								name tree/leftarm_pos_56-57
								execute if score .this aj.player.idle.frame matches 56 run tp @s ^0.29297 ^-0.62411 ^0 ~ ~
								execute if score .this aj.player.idle.frame matches 57 run tp @s ^0.29297 ^-0.62341 ^0 ~ ~
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.rightleg] run {
						name tree/rightleg_pos_top
						execute if score .this aj.player.idle.frame matches 0..57 run {
							name tree/rightleg_pos_0-57
							execute if score .this aj.player.idle.frame matches 0..7 run {
								name tree/rightleg_pos_0-7
								execute if score .this aj.player.idle.frame matches 0 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 1 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 2 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 3 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 4 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 5 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 6 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 7 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 8..15 run {
								name tree/rightleg_pos_8-15
								execute if score .this aj.player.idle.frame matches 8 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 9 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 10 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 11 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 12 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 13 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 14 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 15 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 16..23 run {
								name tree/rightleg_pos_16-23
								execute if score .this aj.player.idle.frame matches 16 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 17 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 18 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 19 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 20 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 21 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 22 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 23 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 24..31 run {
								name tree/rightleg_pos_24-31
								execute if score .this aj.player.idle.frame matches 24 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 25 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 26 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 27 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 28 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 29 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 30 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 31 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 32..39 run {
								name tree/rightleg_pos_32-39
								execute if score .this aj.player.idle.frame matches 32 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 33 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 34 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 35 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 36 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 37 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 38 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 39 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 40..47 run {
								name tree/rightleg_pos_40-47
								execute if score .this aj.player.idle.frame matches 40 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 41 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 42 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 43 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 44 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 45 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 46 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 47 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 48..55 run {
								name tree/rightleg_pos_48-55
								execute if score .this aj.player.idle.frame matches 48 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 49 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 50 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 51 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 52 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 53 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 54 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 55 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 56..57 run {
								name tree/rightleg_pos_56-57
								execute if score .this aj.player.idle.frame matches 56 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 57 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.leftleg] run {
						name tree/leftleg_pos_top
						execute if score .this aj.player.idle.frame matches 0..57 run {
							name tree/leftleg_pos_0-57
							execute if score .this aj.player.idle.frame matches 0..7 run {
								name tree/leftleg_pos_0-7
								execute if score .this aj.player.idle.frame matches 0 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 1 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 2 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 3 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 4 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 5 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 6 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 7 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 8..15 run {
								name tree/leftleg_pos_8-15
								execute if score .this aj.player.idle.frame matches 8 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 9 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 10 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 11 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 12 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 13 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 14 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 15 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 16..23 run {
								name tree/leftleg_pos_16-23
								execute if score .this aj.player.idle.frame matches 16 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 17 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 18 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 19 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 20 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 21 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 22 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 23 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 24..31 run {
								name tree/leftleg_pos_24-31
								execute if score .this aj.player.idle.frame matches 24 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 25 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 26 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 27 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 28 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 29 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 30 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 31 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 32..39 run {
								name tree/leftleg_pos_32-39
								execute if score .this aj.player.idle.frame matches 32 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 33 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 34 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 35 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 36 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 37 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 38 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 39 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 40..47 run {
								name tree/leftleg_pos_40-47
								execute if score .this aj.player.idle.frame matches 40 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 41 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 42 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 43 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 44 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 45 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 46 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 47 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 48..55 run {
								name tree/leftleg_pos_48-55
								execute if score .this aj.player.idle.frame matches 48 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 49 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 50 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 51 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 52 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 53 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 54 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 55 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
							}
							execute if score .this aj.player.idle.frame matches 56..57 run {
								name tree/leftleg_pos_56-57
								execute if score .this aj.player.idle.frame matches 56 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.idle.frame matches 57 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
							}
						}
					}
					execute store result entity @s Air short 1 run scoreboard players get .this aj.player.idle.frame
				}
				# Bone Displays
				execute if entity @s[type=minecraft:armor_stand] run {
					name tree/display_bone_name
					# Rotation
					execute if entity @s[tag=aj.player.bone.head] run {
						name tree/head_rot_top
						execute if score .this aj.player.idle.frame matches 0..57 run {
							name tree/head_rot_0-57
							execute if score .this aj.player.idle.frame matches 0 run data modify entity @s Pose.Head set value [0f,0f,0f]
							execute if score .this aj.player.idle.frame matches 57 run data modify entity @s Pose.Head set value [0f,0f,0f]
						}
					}
					execute if entity @s[tag=aj.player.bone.body] run {
						name tree/body_rot_top
						execute if score .this aj.player.idle.frame matches 0..57 run {
							name tree/body_rot_0-57
							execute if score .this aj.player.idle.frame matches 0 run data modify entity @s Pose.Head set value [0f,0f,0f]
							execute if score .this aj.player.idle.frame matches 57 run data modify entity @s Pose.Head set value [0f,0f,0f]
						}
					}
					execute if entity @s[tag=aj.player.bone.rightarm] run {
						name tree/rightarm_rot_top
						execute if score .this aj.player.idle.frame matches 0..57 run {
							name tree/rightarm_rot_0-57
							execute if score .this aj.player.idle.frame matches 0..7 run {
								name tree/rightarm_rot_0-7
								execute if score .this aj.player.idle.frame matches 0 run data modify entity @s Pose.Head set value [0f,0f,0f]
								execute if score .this aj.player.idle.frame matches 1 run data modify entity @s Pose.Head set value [-0.2229f,0f,0.0125f]
								execute if score .this aj.player.idle.frame matches 2 run data modify entity @s Pose.Head set value [-0.4431f,0f,0.0497f]
								execute if score .this aj.player.idle.frame matches 3 run data modify entity @s Pose.Head set value [-0.6577f,0f,0.1112f]
								execute if score .this aj.player.idle.frame matches 4 run data modify entity @s Pose.Head set value [-0.8642f,0f,0.1963f]
								execute if score .this aj.player.idle.frame matches 5 run data modify entity @s Pose.Head set value [-1.0598f,0f,0.3039f]
								execute if score .this aj.player.idle.frame matches 6 run data modify entity @s Pose.Head set value [-1.2423f,0f,0.4326f]
								execute if score .this aj.player.idle.frame matches 7 run data modify entity @s Pose.Head set value [-1.4093f,0f,0.5809f]
							}
							execute if score .this aj.player.idle.frame matches 8..15 run {
								name tree/rightarm_rot_8-15
								execute if score .this aj.player.idle.frame matches 8 run data modify entity @s Pose.Head set value [-1.5587f,0f,0.7468f]
								execute if score .this aj.player.idle.frame matches 9 run data modify entity @s Pose.Head set value [-1.6887f,0f,0.9283f]
								execute if score .this aj.player.idle.frame matches 10 run data modify entity @s Pose.Head set value [-1.7976f,0f,1.1233f]
								execute if score .this aj.player.idle.frame matches 11 run data modify entity @s Pose.Head set value [-1.8841f,0f,1.3291f]
								execute if score .this aj.player.idle.frame matches 12 run data modify entity @s Pose.Head set value [-1.9472f,0f,1.5433f]
								execute if score .this aj.player.idle.frame matches 13 run data modify entity @s Pose.Head set value [-1.9859f,0f,1.7632f]
								execute if score .this aj.player.idle.frame matches 14 run data modify entity @s Pose.Head set value [-2f,0f,1.986f]
								execute if score .this aj.player.idle.frame matches 15 run data modify entity @s Pose.Head set value [-1.989f,0f,2.2091f]
							}
							execute if score .this aj.player.idle.frame matches 16..23 run {
								name tree/rightarm_rot_16-23
								execute if score .this aj.player.idle.frame matches 16 run data modify entity @s Pose.Head set value [-1.9533f,0f,2.4295f]
								execute if score .this aj.player.idle.frame matches 17 run data modify entity @s Pose.Head set value [-1.8933f,0f,2.6445f]
								execute if score .this aj.player.idle.frame matches 18 run data modify entity @s Pose.Head set value [-1.8097f,0f,2.8516f]
								execute if score .this aj.player.idle.frame matches 19 run data modify entity @s Pose.Head set value [-1.7035f,0f,3.048f]
								execute if score .this aj.player.idle.frame matches 20 run data modify entity @s Pose.Head set value [-1.576f,0f,3.2313f]
								execute if score .this aj.player.idle.frame matches 21 run data modify entity @s Pose.Head set value [-1.4289f,0f,3.3993f]
								execute if score .this aj.player.idle.frame matches 22 run data modify entity @s Pose.Head set value [-1.2641f,0f,3.5499f]
								execute if score .this aj.player.idle.frame matches 23 run data modify entity @s Pose.Head set value [-1.0834f,0f,3.6811f]
							}
							execute if score .this aj.player.idle.frame matches 24..31 run {
								name tree/rightarm_rot_24-31
								execute if score .this aj.player.idle.frame matches 24 run data modify entity @s Pose.Head set value [-0.8893f,0f,3.7914f]
								execute if score .this aj.player.idle.frame matches 25 run data modify entity @s Pose.Head set value [-0.684f,0f,3.8794f]
								execute if score .this aj.player.idle.frame matches 26 run data modify entity @s Pose.Head set value [-0.4703f,0f,3.9439f]
								execute if score .this aj.player.idle.frame matches 27 run data modify entity @s Pose.Head set value [-0.2507f,0f,3.9842f]
								execute if score .this aj.player.idle.frame matches 28 run data modify entity @s Pose.Head set value [-0.0279f,0f,3.9998f]
								execute if score .this aj.player.idle.frame matches 29 run data modify entity @s Pose.Head set value [0.1952f,0f,3.9905f]
								execute if score .this aj.player.idle.frame matches 30 run data modify entity @s Pose.Head set value [0.4158f,0f,3.9563f]
								execute if score .this aj.player.idle.frame matches 31 run data modify entity @s Pose.Head set value [0.6313f,0f,3.8978f]
							}
							execute if score .this aj.player.idle.frame matches 32..39 run {
								name tree/rightarm_rot_32-39
								execute if score .this aj.player.idle.frame matches 32 run data modify entity @s Pose.Head set value [0.8389f,0f,3.8156f]
								execute if score .this aj.player.idle.frame matches 33 run data modify entity @s Pose.Head set value [1.0361f,0f,3.7107f]
								execute if score .this aj.player.idle.frame matches 34 run data modify entity @s Pose.Head set value [1.2203f,0f,3.5846f]
								execute if score .this aj.player.idle.frame matches 35 run data modify entity @s Pose.Head set value [1.3893f,0f,3.4387f]
								execute if score .this aj.player.idle.frame matches 36 run data modify entity @s Pose.Head set value [1.541f,0f,3.2748f]
								execute if score .this aj.player.idle.frame matches 37 run data modify entity @s Pose.Head set value [1.6735f,0f,3.0951f]
								execute if score .this aj.player.idle.frame matches 38 run data modify entity @s Pose.Head set value [1.7852f,0f,2.9018f]
								execute if score .this aj.player.idle.frame matches 39 run data modify entity @s Pose.Head set value [1.8746f,0f,2.6971f]
							}
							execute if score .this aj.player.idle.frame matches 40..47 run {
								name tree/rightarm_rot_40-47
								execute if score .this aj.player.idle.frame matches 40 run data modify entity @s Pose.Head set value [1.9406f,0f,2.4838f]
								execute if score .this aj.player.idle.frame matches 41 run data modify entity @s Pose.Head set value [1.9824f,0f,2.2645f]
								execute if score .this aj.player.idle.frame matches 42 run data modify entity @s Pose.Head set value [1.9996f,0f,2.0419f]
								execute if score .this aj.player.idle.frame matches 43 run data modify entity @s Pose.Head set value [1.9918f,0f,1.8187f]
								execute if score .this aj.player.idle.frame matches 44 run data modify entity @s Pose.Head set value [1.9592f,0f,1.5978f]
								execute if score .this aj.player.idle.frame matches 45 run data modify entity @s Pose.Head set value [1.9021f,0f,1.382f]
								execute if score .this aj.player.idle.frame matches 46 run data modify entity @s Pose.Head set value [1.8214f,0f,1.1738f]
								execute if score .this aj.player.idle.frame matches 47 run data modify entity @s Pose.Head set value [1.7179f,0f,0.9759f]
							}
							execute if score .this aj.player.idle.frame matches 48..55 run {
								name tree/rightarm_rot_48-55
								execute if score .this aj.player.idle.frame matches 48 run data modify entity @s Pose.Head set value [1.5931f,0f,0.7908f]
								execute if score .this aj.player.idle.frame matches 49 run data modify entity @s Pose.Head set value [1.4483f,0f,0.6208f]
								execute if score .this aj.player.idle.frame matches 50 run data modify entity @s Pose.Head set value [1.2856f,0f,0.4679f]
								execute if score .this aj.player.idle.frame matches 51 run data modify entity @s Pose.Head set value [1.1068f,0f,0.3342f]
								execute if score .this aj.player.idle.frame matches 52 run data modify entity @s Pose.Head set value [0.9142f,0f,0.2212f]
								execute if score .this aj.player.idle.frame matches 53 run data modify entity @s Pose.Head set value [0.7102f,0f,0.1303f]
								execute if score .this aj.player.idle.frame matches 54 run data modify entity @s Pose.Head set value [0.4974f,0f,0.0628f]
								execute if score .this aj.player.idle.frame matches 55 run data modify entity @s Pose.Head set value [0.2783f,0f,0.0195f]
							}
							execute if score .this aj.player.idle.frame matches 56..57 run {
								name tree/rightarm_rot_56-57
								execute if score .this aj.player.idle.frame matches 56 run data modify entity @s Pose.Head set value [0.0558f,0f,0.0008f]
								execute if score .this aj.player.idle.frame matches 57 run data modify entity @s Pose.Head set value [-0.1674f,0f,0.007f]
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.leftarm] run {
						name tree/leftarm_rot_top
						execute if score .this aj.player.idle.frame matches 0..57 run {
							name tree/leftarm_rot_0-57
							execute if score .this aj.player.idle.frame matches 0..7 run {
								name tree/leftarm_rot_0-7
								execute if score .this aj.player.idle.frame matches 0 run data modify entity @s Pose.Head set value [0f,0f,0f]
								execute if score .this aj.player.idle.frame matches 1 run data modify entity @s Pose.Head set value [0.2229f,0f,-0.0125f]
								execute if score .this aj.player.idle.frame matches 2 run data modify entity @s Pose.Head set value [0.4431f,0f,-0.0497f]
								execute if score .this aj.player.idle.frame matches 3 run data modify entity @s Pose.Head set value [0.6577f,0f,-0.1112f]
								execute if score .this aj.player.idle.frame matches 4 run data modify entity @s Pose.Head set value [0.8642f,0f,-0.1963f]
								execute if score .this aj.player.idle.frame matches 5 run data modify entity @s Pose.Head set value [1.0598f,0f,-0.3039f]
								execute if score .this aj.player.idle.frame matches 6 run data modify entity @s Pose.Head set value [1.2423f,0f,-0.4326f]
								execute if score .this aj.player.idle.frame matches 7 run data modify entity @s Pose.Head set value [1.4093f,0f,-0.5809f]
							}
							execute if score .this aj.player.idle.frame matches 8..15 run {
								name tree/leftarm_rot_8-15
								execute if score .this aj.player.idle.frame matches 8 run data modify entity @s Pose.Head set value [1.5587f,0f,-0.7468f]
								execute if score .this aj.player.idle.frame matches 9 run data modify entity @s Pose.Head set value [1.6887f,0f,-0.9283f]
								execute if score .this aj.player.idle.frame matches 10 run data modify entity @s Pose.Head set value [1.7976f,0f,-1.1233f]
								execute if score .this aj.player.idle.frame matches 11 run data modify entity @s Pose.Head set value [1.8841f,0f,-1.3291f]
								execute if score .this aj.player.idle.frame matches 12 run data modify entity @s Pose.Head set value [1.9472f,0f,-1.5433f]
								execute if score .this aj.player.idle.frame matches 13 run data modify entity @s Pose.Head set value [1.9859f,0f,-1.7632f]
								execute if score .this aj.player.idle.frame matches 14 run data modify entity @s Pose.Head set value [2f,0f,-1.986f]
								execute if score .this aj.player.idle.frame matches 15 run data modify entity @s Pose.Head set value [1.989f,0f,-2.2091f]
							}
							execute if score .this aj.player.idle.frame matches 16..23 run {
								name tree/leftarm_rot_16-23
								execute if score .this aj.player.idle.frame matches 16 run data modify entity @s Pose.Head set value [1.9533f,0f,-2.4295f]
								execute if score .this aj.player.idle.frame matches 17 run data modify entity @s Pose.Head set value [1.8933f,0f,-2.6445f]
								execute if score .this aj.player.idle.frame matches 18 run data modify entity @s Pose.Head set value [1.8097f,0f,-2.8516f]
								execute if score .this aj.player.idle.frame matches 19 run data modify entity @s Pose.Head set value [1.7035f,0f,-3.048f]
								execute if score .this aj.player.idle.frame matches 20 run data modify entity @s Pose.Head set value [1.576f,0f,-3.2313f]
								execute if score .this aj.player.idle.frame matches 21 run data modify entity @s Pose.Head set value [1.4289f,0f,-3.3993f]
								execute if score .this aj.player.idle.frame matches 22 run data modify entity @s Pose.Head set value [1.2641f,0f,-3.5499f]
								execute if score .this aj.player.idle.frame matches 23 run data modify entity @s Pose.Head set value [1.0834f,0f,-3.6811f]
							}
							execute if score .this aj.player.idle.frame matches 24..31 run {
								name tree/leftarm_rot_24-31
								execute if score .this aj.player.idle.frame matches 24 run data modify entity @s Pose.Head set value [0.8893f,0f,-3.7914f]
								execute if score .this aj.player.idle.frame matches 25 run data modify entity @s Pose.Head set value [0.684f,0f,-3.8794f]
								execute if score .this aj.player.idle.frame matches 26 run data modify entity @s Pose.Head set value [0.4703f,0f,-3.9439f]
								execute if score .this aj.player.idle.frame matches 27 run data modify entity @s Pose.Head set value [0.2507f,0f,-3.9842f]
								execute if score .this aj.player.idle.frame matches 28 run data modify entity @s Pose.Head set value [0.0279f,0f,-3.9998f]
								execute if score .this aj.player.idle.frame matches 29 run data modify entity @s Pose.Head set value [-0.1952f,0f,-3.9905f]
								execute if score .this aj.player.idle.frame matches 30 run data modify entity @s Pose.Head set value [-0.4158f,0f,-3.9563f]
								execute if score .this aj.player.idle.frame matches 31 run data modify entity @s Pose.Head set value [-0.6313f,0f,-3.8978f]
							}
							execute if score .this aj.player.idle.frame matches 32..39 run {
								name tree/leftarm_rot_32-39
								execute if score .this aj.player.idle.frame matches 32 run data modify entity @s Pose.Head set value [-0.8389f,0f,-3.8156f]
								execute if score .this aj.player.idle.frame matches 33 run data modify entity @s Pose.Head set value [-1.0361f,0f,-3.7107f]
								execute if score .this aj.player.idle.frame matches 34 run data modify entity @s Pose.Head set value [-1.2203f,0f,-3.5846f]
								execute if score .this aj.player.idle.frame matches 35 run data modify entity @s Pose.Head set value [-1.3893f,0f,-3.4387f]
								execute if score .this aj.player.idle.frame matches 36 run data modify entity @s Pose.Head set value [-1.541f,0f,-3.2748f]
								execute if score .this aj.player.idle.frame matches 37 run data modify entity @s Pose.Head set value [-1.6735f,0f,-3.0951f]
								execute if score .this aj.player.idle.frame matches 38 run data modify entity @s Pose.Head set value [-1.7852f,0f,-2.9018f]
								execute if score .this aj.player.idle.frame matches 39 run data modify entity @s Pose.Head set value [-1.8746f,0f,-2.6971f]
							}
							execute if score .this aj.player.idle.frame matches 40..47 run {
								name tree/leftarm_rot_40-47
								execute if score .this aj.player.idle.frame matches 40 run data modify entity @s Pose.Head set value [-1.9406f,0f,-2.4838f]
								execute if score .this aj.player.idle.frame matches 41 run data modify entity @s Pose.Head set value [-1.9824f,0f,-2.2645f]
								execute if score .this aj.player.idle.frame matches 42 run data modify entity @s Pose.Head set value [-1.9996f,0f,-2.0419f]
								execute if score .this aj.player.idle.frame matches 43 run data modify entity @s Pose.Head set value [-1.9918f,0f,-1.8187f]
								execute if score .this aj.player.idle.frame matches 44 run data modify entity @s Pose.Head set value [-1.9592f,0f,-1.5978f]
								execute if score .this aj.player.idle.frame matches 45 run data modify entity @s Pose.Head set value [-1.9021f,0f,-1.382f]
								execute if score .this aj.player.idle.frame matches 46 run data modify entity @s Pose.Head set value [-1.8214f,0f,-1.1738f]
								execute if score .this aj.player.idle.frame matches 47 run data modify entity @s Pose.Head set value [-1.7179f,0f,-0.9759f]
							}
							execute if score .this aj.player.idle.frame matches 48..55 run {
								name tree/leftarm_rot_48-55
								execute if score .this aj.player.idle.frame matches 48 run data modify entity @s Pose.Head set value [-1.5931f,0f,-0.7908f]
								execute if score .this aj.player.idle.frame matches 49 run data modify entity @s Pose.Head set value [-1.4483f,0f,-0.6208f]
								execute if score .this aj.player.idle.frame matches 50 run data modify entity @s Pose.Head set value [-1.2856f,0f,-0.4679f]
								execute if score .this aj.player.idle.frame matches 51 run data modify entity @s Pose.Head set value [-1.1068f,0f,-0.3342f]
								execute if score .this aj.player.idle.frame matches 52 run data modify entity @s Pose.Head set value [-0.9142f,0f,-0.2212f]
								execute if score .this aj.player.idle.frame matches 53 run data modify entity @s Pose.Head set value [-0.7102f,0f,-0.1303f]
								execute if score .this aj.player.idle.frame matches 54 run data modify entity @s Pose.Head set value [-0.4974f,0f,-0.0628f]
								execute if score .this aj.player.idle.frame matches 55 run data modify entity @s Pose.Head set value [-0.2783f,0f,-0.0195f]
							}
							execute if score .this aj.player.idle.frame matches 56..57 run {
								name tree/leftarm_rot_56-57
								execute if score .this aj.player.idle.frame matches 56 run data modify entity @s Pose.Head set value [-0.0558f,0f,-0.0008f]
								execute if score .this aj.player.idle.frame matches 57 run data modify entity @s Pose.Head set value [0.1674f,0f,-0.007f]
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.rightleg] run {
						name tree/rightleg_rot_top
						execute if score .this aj.player.idle.frame matches 0..57 run {
							name tree/rightleg_rot_0-57
							execute if score .this aj.player.idle.frame matches 0 run data modify entity @s Pose.Head set value [-2.5f,0f,2.5f]
							execute if score .this aj.player.idle.frame matches 57 run data modify entity @s Pose.Head set value [-2.5f,0f,2.5f]
						}
					}
					execute if entity @s[tag=aj.player.bone.leftleg] run {
						name tree/leftleg_rot_top
						execute if score .this aj.player.idle.frame matches 0..57 run {
							name tree/leftleg_rot_0-57
							execute if score .this aj.player.idle.frame matches 0 run data modify entity @s Pose.Head set value [4.9953f,0.2178f,-2.4905f]
							execute if score .this aj.player.idle.frame matches 57 run data modify entity @s Pose.Head set value [4.9953f,0.2178f,-2.4905f]
						}
					}
					# Scaling
					# Make sure rotation stays aligned with root entity
					execute positioned as @s run tp @s ~ ~ ~ ~ ~
				}
			}
			# Increment frame
			scoreboard players operation @s aj.player.idle.frame += .aj.player.framerate aj.i
			# Let the anim_loop know we're still running
			scoreboard players set .aj.animation aj.player.animating 1
			# If (the next frame is the end of the animation) perform the necessary actions for the loop mode of the animation
			execute if score .aj.player.framerate aj.i matches 1.. if score @s aj.player.idle.frame matches 58.. run function player:animations/idle/edge
			execute if score .aj.player.framerate aj.i matches ..0 if score @s aj.player.idle.frame matches ..-1 run function player:animations/idle/edge
			# execute unless score @s aj.player.idle.frame matches 0..57 run function player:animations/idle/edge
		}
		# Performs a loop mode action depending on what the animation's configured loop mode is
		function edge {
			# Play Once
			execute if score @s aj.player.idle.loopMode matches 0 run function player:animations/idle/stop
			# Hold on last frame
			execute if score @s aj.player.idle.loopMode matches 1 run function player:animations/idle/pause
			# loop
			execute if score @s aj.player.idle.loopMode matches 2 run {
				execute (if score @s aj.player.idle.frame matches ..1) {
					scoreboard players set @s aj.player.idle.frame 58
				} else {
					scoreboard players set @s aj.player.idle.frame 0
				}
			}
		}
	}
	dir end_walk {
		# Starts the animation from the first frame
		function play {
			# Make sure this function has been ran as the root entity
			execute(if entity @s[tag=aj.player.root] at @s) {
				# Add animation tag
				tag @s add aj.player.anim.end_walk
				# Reset animation time
				execute if score .aj.player.framerate aj.i matches ..-1 run scoreboard players set @s aj.player.end_walk.frame 58
				execute if score .aj.player.framerate aj.i matches 1.. run scoreboard players set @s aj.player.end_walk.frame 0
				# Assert that .noScripts is tracked properly
				scoreboard players add .noScripts aj.i 0
				# Start the animation loop if not running
				execute if score .aj.anim_loop aj.player.animating matches 0 run function player:animation_loop
				# If this entity is not the root
			} else {
				tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:animations/end_walk/play ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
			}
		}
		# Stops the animation and resets to first frame
		function stop {
			# Make sure this function has been ran as the root entity
			execute(if entity @s[tag=aj.player.root] at @s) {
				# Add animation tag
				tag @s remove aj.player.anim.end_walk
				# Reset animation time
				scoreboard players set @s aj.player.end_walk.frame 0
				# load initial animation frame without running scripts
				scoreboard players operation .oldValue aj.i = .noScripts aj.i
				scoreboard players set .noScripts aj.i 1
				function player:animations/end_walk/next_frame
				scoreboard players operation .noScripts aj.i = .oldValue aj.i
				# Reset animation time
				scoreboard players set @s aj.player.end_walk.frame 0
				# If this entity is not the root
			} else {
				tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:animations/end_walk/stop ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
			}
		}
		# Pauses the animation on the current frame
		function pause {
			# Make sure this function has been ran as the root entity
			execute(if entity @s[tag=aj.player.root] at @s) {
				# Remove animation tag
				tag @s remove aj.player.anim.end_walk
				# If this entity is not the root
			} else {
				tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:animations/end_walk/pause ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
			}
		}
		# Resumes the animation from the current frame
		function resume {
			# Make sure this function has been ran as the root entity
			execute(if entity @s[tag=aj.player.root]) {
				# Remove animation tag
				tag @s add aj.player.anim.end_walk
				# Start the animation loop
				execute if score .aj.anim_loop aj.player.animating matches 0 run function player:animation_loop
				# If this entity is not the root
			} else {
				tellraw @s [["",{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"green"},{"text":" → ","color":"light_purple"},{"text":"Error ☠","color":"red"},{"text":" ]","color":"dark_gray"},"\n"],{"text":"→ ","color":"red"},{"text":"The function ","color":"gray"},{"text":"player:animations/end_walk/resume ","color":"yellow"},{"text":"must be","color":"gray"},"\n",{"text":"executed as @e[tag=aj.player.root]","color":"light_purple"}]
			}
		}
		# Plays the next frame in the animation
		function next_frame {
			scoreboard players operation .this aj.id = @s aj.id
			scoreboard players operation .this aj.player.end_walk.frame = @s aj.player.end_walk.frame
			execute rotated ~ 0 as @e[type=#player:bone_entities,tag=aj.player.bone,distance=..2.5340000000000003] if score @s aj.id = .this aj.id run {
				name tree/trunk
				# Bone Roots
				execute if entity @s[type=minecraft:area_effect_cloud] run {
					name tree/root_bone_name
					# Position
					execute if entity @s[tag=aj.player.bone.head] run {
						name tree/head_pos_top
						execute if score .this aj.player.end_walk.frame matches 0..57 run {
							name tree/head_pos_0-57
							execute if score .this aj.player.end_walk.frame matches 0..7 run {
								name tree/head_pos_0-7
								execute if score .this aj.player.end_walk.frame matches 0 run tp @s ^0 ^-0.50675 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 1 run tp @s ^0 ^-0.50692 ^0.01552 ~ ~
								execute if score .this aj.player.end_walk.frame matches 2 run tp @s ^0 ^-0.5078 ^0.03687 ~ ~
								execute if score .this aj.player.end_walk.frame matches 3 run tp @s ^0 ^-0.5096 ^0.05971 ~ ~
								execute if score .this aj.player.end_walk.frame matches 4 run tp @s ^0 ^-0.51185 ^0.07969 ~ ~
								execute if score .this aj.player.end_walk.frame matches 5 run tp @s ^0 ^-0.51343 ^0.09095 ~ ~
								execute if score .this aj.player.end_walk.frame matches 6 run tp @s ^0 ^-0.51374 ^0.11389 ~ ~
								execute if score .this aj.player.end_walk.frame matches 7 run tp @s ^0 ^-0.5097 ^0.13673 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 8..15 run {
								name tree/head_pos_8-15
								execute if score .this aj.player.end_walk.frame matches 8 run tp @s ^0 ^-0.50549 ^0.15862 ~ ~
								execute if score .this aj.player.end_walk.frame matches 9 run tp @s ^0 ^-0.50113 ^0.17853 ~ ~
								execute if score .this aj.player.end_walk.frame matches 10 run tp @s ^0 ^-0.50495 ^0.19574 ~ ~
								execute if score .this aj.player.end_walk.frame matches 11 run tp @s ^0 ^-0.50867 ^0.20919 ~ ~
								execute if score .this aj.player.end_walk.frame matches 12 run tp @s ^0 ^-0.51231 ^0.21661 ~ ~
								execute if score .this aj.player.end_walk.frame matches 13 run tp @s ^0 ^-0.50755 ^0.22064 ~ ~
								execute if score .this aj.player.end_walk.frame matches 14 run tp @s ^0 ^-0.50276 ^0.22436 ~ ~
								execute if score .this aj.player.end_walk.frame matches 15 run tp @s ^0 ^-0.49797 ^0.23063 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 16..23 run {
								name tree/head_pos_16-23
								execute if score .this aj.player.end_walk.frame matches 16 run tp @s ^0 ^-0.50146 ^0.23991 ~ ~
								execute if score .this aj.player.end_walk.frame matches 17 run tp @s ^0 ^-0.50493 ^0.25019 ~ ~
								execute if score .this aj.player.end_walk.frame matches 18 run tp @s ^0 ^-0.50843 ^0.26096 ~ ~
								execute if score .this aj.player.end_walk.frame matches 19 run tp @s ^0 ^-0.50755 ^0.27167 ~ ~
								execute if score .this aj.player.end_walk.frame matches 20 run tp @s ^0 ^-0.50684 ^0.2688 ~ ~
								execute if score .this aj.player.end_walk.frame matches 21 run tp @s ^0 ^-0.50634 ^0.25628 ~ ~
								execute if score .this aj.player.end_walk.frame matches 22 run tp @s ^0 ^-0.506 ^0.23292 ~ ~
								execute if score .this aj.player.end_walk.frame matches 23 run tp @s ^0 ^-0.50582 ^0.20495 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 24..31 run {
								name tree/head_pos_24-31
								execute if score .this aj.player.end_walk.frame matches 24 run tp @s ^0 ^-0.50578 ^0.16744 ~ ~
								execute if score .this aj.player.end_walk.frame matches 25 run tp @s ^0 ^-0.50587 ^0.12762 ~ ~
								execute if score .this aj.player.end_walk.frame matches 26 run tp @s ^0 ^-0.50606 ^0.09311 ~ ~
								execute if score .this aj.player.end_walk.frame matches 27 run tp @s ^0 ^-0.50635 ^0.07066 ~ ~
								execute if score .this aj.player.end_walk.frame matches 28 run tp @s ^0 ^-0.50671 ^0.04967 ~ ~
								execute if score .this aj.player.end_walk.frame matches 29 run tp @s ^0 ^-0.50716 ^0.0309 ~ ~
								execute if score .this aj.player.end_walk.frame matches 30 run tp @s ^0 ^-0.50768 ^0.01508 ~ ~
								execute if score .this aj.player.end_walk.frame matches 31 run tp @s ^0 ^-0.50826 ^0.00295 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 32..39 run {
								name tree/head_pos_32-39
								execute if score .this aj.player.end_walk.frame matches 32 run tp @s ^0 ^-0.50891 ^0.00193 ~ ~
								execute if score .this aj.player.end_walk.frame matches 33 run tp @s ^0 ^-0.50961 ^0.00098 ~ ~
								execute if score .this aj.player.end_walk.frame matches 34 run tp @s ^0 ^-0.51034 ^0.00028 ~ ~
								execute if score .this aj.player.end_walk.frame matches 35 run tp @s ^0 ^-0.51109 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 36 run tp @s ^0 ^-0.51157 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 37 run tp @s ^0 ^-0.51198 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 38 run tp @s ^0 ^-0.51233 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 39 run tp @s ^0 ^-0.51261 ^0 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 40..47 run {
								name tree/head_pos_40-47
								execute if score .this aj.player.end_walk.frame matches 40 run tp @s ^0 ^-0.51281 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 41 run tp @s ^0 ^-0.51295 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 42 run tp @s ^0 ^-0.513 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 43 run tp @s ^0 ^-0.51297 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 44 run tp @s ^0 ^-0.51287 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 45 run tp @s ^0 ^-0.51269 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 46 run tp @s ^0 ^-0.51244 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 47 run tp @s ^0 ^-0.51212 ^0 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 48..55 run {
								name tree/head_pos_48-55
								execute if score .this aj.player.end_walk.frame matches 48 run tp @s ^0 ^-0.51173 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 49 run tp @s ^0 ^-0.51128 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 50 run tp @s ^0 ^-0.51077 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 51 run tp @s ^0 ^-0.51021 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 52 run tp @s ^0 ^-0.50961 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 53 run tp @s ^0 ^-0.50897 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 54 run tp @s ^0 ^-0.5083 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 55 run tp @s ^0 ^-0.50762 ^0 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 56..57 run {
								name tree/head_pos_56-57
								execute if score .this aj.player.end_walk.frame matches 56 run tp @s ^0 ^-0.50692 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 57 run tp @s ^0 ^-0.50623 ^0 ~ ~
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.body] run {
						name tree/body_pos_top
						execute if score .this aj.player.end_walk.frame matches 0..57 run {
							name tree/body_pos_0-57
							execute if score .this aj.player.end_walk.frame matches 0..7 run {
								name tree/body_pos_0-7
								execute if score .this aj.player.end_walk.frame matches 0 run tp @s ^0 ^-1.20987 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 1 run tp @s ^0 ^-1.20989 ^0.03 ~ ~
								execute if score .this aj.player.end_walk.frame matches 2 run tp @s ^0 ^-1.21 ^0.07293 ~ ~
								execute if score .this aj.player.end_walk.frame matches 3 run tp @s ^0 ^-1.2102 ^0.11928 ~ ~
								execute if score .this aj.player.end_walk.frame matches 4 run tp @s ^0 ^-1.21043 ^0.15953 ~ ~
								execute if score .this aj.player.end_walk.frame matches 5 run tp @s ^0 ^-1.21054 ^0.18273 ~ ~
								execute if score .this aj.player.end_walk.frame matches 6 run tp @s ^0 ^-1.21053 ^0.20808 ~ ~
								execute if score .this aj.player.end_walk.frame matches 7 run tp @s ^0 ^-1.20633 ^0.23213 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 8..15 run {
								name tree/body_pos_8-15
								execute if score .this aj.player.end_walk.frame matches 8 run tp @s ^0 ^-1.2021 ^0.2541 ~ ~
								execute if score .this aj.player.end_walk.frame matches 9 run tp @s ^0 ^-1.19787 ^0.27307 ~ ~
								execute if score .this aj.player.end_walk.frame matches 10 run tp @s ^0 ^-1.20195 ^0.28836 ~ ~
								execute if score .this aj.player.end_walk.frame matches 11 run tp @s ^0 ^-1.20603 ^0.29902 ~ ~
								execute if score .this aj.player.end_walk.frame matches 12 run tp @s ^0 ^-1.21012 ^0.30285 ~ ~
								execute if score .this aj.player.end_walk.frame matches 13 run tp @s ^0 ^-1.20589 ^0.30256 ~ ~
								execute if score .this aj.player.end_walk.frame matches 14 run tp @s ^0 ^-1.20166 ^0.30134 ~ ~
								execute if score .this aj.player.end_walk.frame matches 15 run tp @s ^0 ^-1.19745 ^0.30209 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 16..23 run {
								name tree/body_pos_16-23
								execute if score .this aj.player.end_walk.frame matches 16 run tp @s ^0 ^-1.20158 ^0.30483 ~ ~
								execute if score .this aj.player.end_walk.frame matches 17 run tp @s ^0 ^-1.20573 ^0.30732 ~ ~
								execute if score .this aj.player.end_walk.frame matches 18 run tp @s ^0 ^-1.20988 ^0.30947 ~ ~
								execute if score .this aj.player.end_walk.frame matches 19 run tp @s ^0 ^-1.20956 ^0.31122 ~ ~
								execute if score .this aj.player.end_walk.frame matches 20 run tp @s ^0 ^-1.2093 ^0.29947 ~ ~
								execute if score .this aj.player.end_walk.frame matches 21 run tp @s ^0 ^-1.20909 ^0.27935 ~ ~
								execute if score .this aj.player.end_walk.frame matches 22 run tp @s ^0 ^-1.20895 ^0.24875 ~ ~
								execute if score .this aj.player.end_walk.frame matches 23 run tp @s ^0 ^-1.20888 ^0.21427 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 24..31 run {
								name tree/body_pos_24-31
								execute if score .this aj.player.end_walk.frame matches 24 run tp @s ^0 ^-1.20889 ^0.17137 ~ ~
								execute if score .this aj.player.end_walk.frame matches 25 run tp @s ^0 ^-1.20899 ^0.12762 ~ ~
								execute if score .this aj.player.end_walk.frame matches 26 run tp @s ^0 ^-1.20918 ^0.09062 ~ ~
								execute if score .this aj.player.end_walk.frame matches 27 run tp @s ^0 ^-1.20946 ^0.06673 ~ ~
								execute if score .this aj.player.end_walk.frame matches 28 run tp @s ^0 ^-1.20982 ^0.04516 ~ ~
								execute if score .this aj.player.end_walk.frame matches 29 run tp @s ^0 ^-1.21027 ^0.02648 ~ ~
								execute if score .this aj.player.end_walk.frame matches 30 run tp @s ^0 ^-1.21079 ^0.01124 ~ ~
								execute if score .this aj.player.end_walk.frame matches 31 run tp @s ^0 ^-1.21138 ^0 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 32..39 run {
								name tree/body_pos_32-39
								execute if score .this aj.player.end_walk.frame matches 32 run tp @s ^0 ^-1.21203 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 33 run tp @s ^0 ^-1.21273 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 34 run tp @s ^0 ^-1.21346 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 35 run tp @s ^0 ^-1.21422 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 36 run tp @s ^0 ^-1.21469 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 37 run tp @s ^0 ^-1.2151 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 38 run tp @s ^0 ^-1.21545 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 39 run tp @s ^0 ^-1.21573 ^0 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 40..47 run {
								name tree/body_pos_40-47
								execute if score .this aj.player.end_walk.frame matches 40 run tp @s ^0 ^-1.21594 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 41 run tp @s ^0 ^-1.21607 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 42 run tp @s ^0 ^-1.21612 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 43 run tp @s ^0 ^-1.2161 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 44 run tp @s ^0 ^-1.216 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 45 run tp @s ^0 ^-1.21582 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 46 run tp @s ^0 ^-1.21557 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 47 run tp @s ^0 ^-1.21524 ^0 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 48..55 run {
								name tree/body_pos_48-55
								execute if score .this aj.player.end_walk.frame matches 48 run tp @s ^0 ^-1.21485 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 49 run tp @s ^0 ^-1.2144 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 50 run tp @s ^0 ^-1.21389 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 51 run tp @s ^0 ^-1.21333 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 52 run tp @s ^0 ^-1.21273 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 53 run tp @s ^0 ^-1.21209 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 54 run tp @s ^0 ^-1.21143 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 55 run tp @s ^0 ^-1.21074 ^0 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 56..57 run {
								name tree/body_pos_56-57
								execute if score .this aj.player.end_walk.frame matches 56 run tp @s ^0 ^-1.21005 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 57 run tp @s ^0 ^-1.20935 ^0 ~ ~
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.rightarm] run {
						name tree/rightarm_pos_top
						execute if score .this aj.player.end_walk.frame matches 0..57 run {
							name tree/rightarm_pos_0-57
							execute if score .this aj.player.end_walk.frame matches 0..7 run {
								name tree/rightarm_pos_0-7
								execute if score .this aj.player.end_walk.frame matches 0 run tp @s ^-0.29297 ^-0.62394 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 1 run tp @s ^-0.29297 ^-0.62408 ^0.01794 ~ ~
								execute if score .this aj.player.end_walk.frame matches 2 run tp @s ^-0.29297 ^-0.62483 ^0.04288 ~ ~
								execute if score .this aj.player.end_walk.frame matches 3 run tp @s ^-0.29297 ^-0.62637 ^0.06963 ~ ~
								execute if score .this aj.player.end_walk.frame matches 4 run tp @s ^-0.29297 ^-0.62828 ^0.09299 ~ ~
								execute if score .this aj.player.end_walk.frame matches 5 run tp @s ^-0.29297 ^-0.62962 ^0.10625 ~ ~
								execute if score .this aj.player.end_walk.frame matches 6 run tp @s ^-0.29297 ^-0.62987 ^0.12959 ~ ~
								execute if score .this aj.player.end_walk.frame matches 7 run tp @s ^-0.29297 ^-0.62581 ^0.15263 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 8..15 run {
								name tree/rightarm_pos_8-15
								execute if score .this aj.player.end_walk.frame matches 8 run tp @s ^-0.29297 ^-0.6216 ^0.17453 ~ ~
								execute if score .this aj.player.end_walk.frame matches 9 run tp @s ^-0.29297 ^-0.61725 ^0.19429 ~ ~
								execute if score .this aj.player.end_walk.frame matches 10 run tp @s ^-0.29297 ^-0.62112 ^0.21118 ~ ~
								execute if score .this aj.player.end_walk.frame matches 11 run tp @s ^-0.29297 ^-0.6249 ^0.22417 ~ ~
								execute if score .this aj.player.end_walk.frame matches 12 run tp @s ^-0.29297 ^-0.62861 ^0.23098 ~ ~
								execute if score .this aj.player.end_walk.frame matches 13 run tp @s ^-0.29297 ^-0.62394 ^0.23429 ~ ~
								execute if score .this aj.player.end_walk.frame matches 14 run tp @s ^-0.29297 ^-0.61925 ^0.23719 ~ ~
								execute if score .this aj.player.end_walk.frame matches 15 run tp @s ^-0.29297 ^-0.61455 ^0.24254 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 16..23 run {
								name tree/rightarm_pos_16-23
								execute if score .this aj.player.end_walk.frame matches 16 run tp @s ^-0.29297 ^-0.61815 ^0.25073 ~ ~
								execute if score .this aj.player.end_walk.frame matches 17 run tp @s ^-0.29297 ^-0.62173 ^0.25971 ~ ~
								execute if score .this aj.player.end_walk.frame matches 18 run tp @s ^-0.29297 ^-0.62534 ^0.26904 ~ ~
								execute if score .this aj.player.end_walk.frame matches 19 run tp @s ^-0.29297 ^-0.62455 ^0.27826 ~ ~
								execute if score .this aj.player.end_walk.frame matches 20 run tp @s ^-0.29297 ^-0.62392 ^0.27391 ~ ~
								execute if score .this aj.player.end_walk.frame matches 21 run tp @s ^-0.29297 ^-0.62346 ^0.26013 ~ ~
								execute if score .this aj.player.end_walk.frame matches 22 run tp @s ^-0.29297 ^-0.62316 ^0.23556 ~ ~
								execute if score .this aj.player.end_walk.frame matches 23 run tp @s ^-0.29297 ^-0.62299 ^0.2065 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 24..31 run {
								name tree/rightarm_pos_24-31
								execute if score .this aj.player.end_walk.frame matches 24 run tp @s ^-0.29297 ^-0.62297 ^0.16809 ~ ~
								execute if score .this aj.player.end_walk.frame matches 25 run tp @s ^-0.29297 ^-0.62306 ^0.12762 ~ ~
								execute if score .this aj.player.end_walk.frame matches 26 run tp @s ^-0.29297 ^-0.62325 ^0.0927 ~ ~
								execute if score .this aj.player.end_walk.frame matches 27 run tp @s ^-0.29297 ^-0.62353 ^0.07 ~ ~
								execute if score .this aj.player.end_walk.frame matches 28 run tp @s ^-0.29297 ^-0.6239 ^0.04892 ~ ~
								execute if score .this aj.player.end_walk.frame matches 29 run tp @s ^-0.29297 ^-0.62434 ^0.03017 ~ ~
								execute if score .this aj.player.end_walk.frame matches 30 run tp @s ^-0.29297 ^-0.62486 ^0.01444 ~ ~
								execute if score .this aj.player.end_walk.frame matches 31 run tp @s ^-0.29297 ^-0.62545 ^0.00245 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 32..39 run {
								name tree/rightarm_pos_32-39
								execute if score .this aj.player.end_walk.frame matches 32 run tp @s ^-0.29297 ^-0.6261 ^0.00161 ~ ~
								execute if score .this aj.player.end_walk.frame matches 33 run tp @s ^-0.29297 ^-0.62679 ^0.00082 ~ ~
								execute if score .this aj.player.end_walk.frame matches 34 run tp @s ^-0.29297 ^-0.62753 ^0.00023 ~ ~
								execute if score .this aj.player.end_walk.frame matches 35 run tp @s ^-0.29297 ^-0.62828 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 36 run tp @s ^-0.29297 ^-0.62875 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 37 run tp @s ^-0.29297 ^-0.62917 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 38 run tp @s ^-0.29297 ^-0.62952 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 39 run tp @s ^-0.29297 ^-0.6298 ^0 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 40..47 run {
								name tree/rightarm_pos_40-47
								execute if score .this aj.player.end_walk.frame matches 40 run tp @s ^-0.29297 ^-0.63 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 41 run tp @s ^-0.29297 ^-0.63013 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 42 run tp @s ^-0.29297 ^-0.63019 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 43 run tp @s ^-0.29297 ^-0.63016 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 44 run tp @s ^-0.29297 ^-0.63006 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 45 run tp @s ^-0.29297 ^-0.62988 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 46 run tp @s ^-0.29297 ^-0.62963 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 47 run tp @s ^-0.29297 ^-0.62931 ^0 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 48..55 run {
								name tree/rightarm_pos_48-55
								execute if score .this aj.player.end_walk.frame matches 48 run tp @s ^-0.29297 ^-0.62892 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 49 run tp @s ^-0.29297 ^-0.62846 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 50 run tp @s ^-0.29297 ^-0.62795 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 51 run tp @s ^-0.29297 ^-0.6274 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 52 run tp @s ^-0.29297 ^-0.62679 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 53 run tp @s ^-0.29297 ^-0.62616 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 54 run tp @s ^-0.29297 ^-0.62549 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 55 run tp @s ^-0.29297 ^-0.62481 ^0 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 56..57 run {
								name tree/rightarm_pos_56-57
								execute if score .this aj.player.end_walk.frame matches 56 run tp @s ^-0.29297 ^-0.62411 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 57 run tp @s ^-0.29297 ^-0.62341 ^0 ~ ~
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.leftarm] run {
						name tree/leftarm_pos_top
						execute if score .this aj.player.end_walk.frame matches 0..57 run {
							name tree/leftarm_pos_0-57
							execute if score .this aj.player.end_walk.frame matches 0..7 run {
								name tree/leftarm_pos_0-7
								execute if score .this aj.player.end_walk.frame matches 0 run tp @s ^0.29297 ^-0.62394 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 1 run tp @s ^0.29297 ^-0.62408 ^0.01794 ~ ~
								execute if score .this aj.player.end_walk.frame matches 2 run tp @s ^0.29297 ^-0.62483 ^0.04288 ~ ~
								execute if score .this aj.player.end_walk.frame matches 3 run tp @s ^0.29297 ^-0.62637 ^0.06963 ~ ~
								execute if score .this aj.player.end_walk.frame matches 4 run tp @s ^0.29297 ^-0.62828 ^0.09299 ~ ~
								execute if score .this aj.player.end_walk.frame matches 5 run tp @s ^0.29297 ^-0.62962 ^0.10625 ~ ~
								execute if score .this aj.player.end_walk.frame matches 6 run tp @s ^0.29297 ^-0.62987 ^0.12959 ~ ~
								execute if score .this aj.player.end_walk.frame matches 7 run tp @s ^0.29297 ^-0.62581 ^0.15263 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 8..15 run {
								name tree/leftarm_pos_8-15
								execute if score .this aj.player.end_walk.frame matches 8 run tp @s ^0.29297 ^-0.6216 ^0.17453 ~ ~
								execute if score .this aj.player.end_walk.frame matches 9 run tp @s ^0.29297 ^-0.61725 ^0.19429 ~ ~
								execute if score .this aj.player.end_walk.frame matches 10 run tp @s ^0.29297 ^-0.62112 ^0.21118 ~ ~
								execute if score .this aj.player.end_walk.frame matches 11 run tp @s ^0.29297 ^-0.6249 ^0.22417 ~ ~
								execute if score .this aj.player.end_walk.frame matches 12 run tp @s ^0.29297 ^-0.62861 ^0.23098 ~ ~
								execute if score .this aj.player.end_walk.frame matches 13 run tp @s ^0.29297 ^-0.62394 ^0.23429 ~ ~
								execute if score .this aj.player.end_walk.frame matches 14 run tp @s ^0.29297 ^-0.61925 ^0.23719 ~ ~
								execute if score .this aj.player.end_walk.frame matches 15 run tp @s ^0.29297 ^-0.61455 ^0.24254 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 16..23 run {
								name tree/leftarm_pos_16-23
								execute if score .this aj.player.end_walk.frame matches 16 run tp @s ^0.29297 ^-0.61815 ^0.25073 ~ ~
								execute if score .this aj.player.end_walk.frame matches 17 run tp @s ^0.29297 ^-0.62173 ^0.25971 ~ ~
								execute if score .this aj.player.end_walk.frame matches 18 run tp @s ^0.29297 ^-0.62534 ^0.26904 ~ ~
								execute if score .this aj.player.end_walk.frame matches 19 run tp @s ^0.29297 ^-0.62455 ^0.27826 ~ ~
								execute if score .this aj.player.end_walk.frame matches 20 run tp @s ^0.29297 ^-0.62392 ^0.27391 ~ ~
								execute if score .this aj.player.end_walk.frame matches 21 run tp @s ^0.29297 ^-0.62346 ^0.26013 ~ ~
								execute if score .this aj.player.end_walk.frame matches 22 run tp @s ^0.29297 ^-0.62316 ^0.23556 ~ ~
								execute if score .this aj.player.end_walk.frame matches 23 run tp @s ^0.29297 ^-0.62299 ^0.2065 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 24..31 run {
								name tree/leftarm_pos_24-31
								execute if score .this aj.player.end_walk.frame matches 24 run tp @s ^0.29297 ^-0.62297 ^0.16809 ~ ~
								execute if score .this aj.player.end_walk.frame matches 25 run tp @s ^0.29297 ^-0.62306 ^0.12762 ~ ~
								execute if score .this aj.player.end_walk.frame matches 26 run tp @s ^0.29297 ^-0.62325 ^0.0927 ~ ~
								execute if score .this aj.player.end_walk.frame matches 27 run tp @s ^0.29297 ^-0.62353 ^0.07 ~ ~
								execute if score .this aj.player.end_walk.frame matches 28 run tp @s ^0.29297 ^-0.6239 ^0.04892 ~ ~
								execute if score .this aj.player.end_walk.frame matches 29 run tp @s ^0.29297 ^-0.62434 ^0.03017 ~ ~
								execute if score .this aj.player.end_walk.frame matches 30 run tp @s ^0.29297 ^-0.62486 ^0.01444 ~ ~
								execute if score .this aj.player.end_walk.frame matches 31 run tp @s ^0.29297 ^-0.62545 ^0.00245 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 32..39 run {
								name tree/leftarm_pos_32-39
								execute if score .this aj.player.end_walk.frame matches 32 run tp @s ^0.29297 ^-0.6261 ^0.00161 ~ ~
								execute if score .this aj.player.end_walk.frame matches 33 run tp @s ^0.29297 ^-0.62679 ^0.00082 ~ ~
								execute if score .this aj.player.end_walk.frame matches 34 run tp @s ^0.29297 ^-0.62753 ^0.00023 ~ ~
								execute if score .this aj.player.end_walk.frame matches 35 run tp @s ^0.29297 ^-0.62828 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 36 run tp @s ^0.29297 ^-0.62875 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 37 run tp @s ^0.29297 ^-0.62917 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 38 run tp @s ^0.29297 ^-0.62952 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 39 run tp @s ^0.29297 ^-0.6298 ^0 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 40..47 run {
								name tree/leftarm_pos_40-47
								execute if score .this aj.player.end_walk.frame matches 40 run tp @s ^0.29297 ^-0.63 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 41 run tp @s ^0.29297 ^-0.63013 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 42 run tp @s ^0.29297 ^-0.63019 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 43 run tp @s ^0.29297 ^-0.63016 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 44 run tp @s ^0.29297 ^-0.63006 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 45 run tp @s ^0.29297 ^-0.62988 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 46 run tp @s ^0.29297 ^-0.62963 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 47 run tp @s ^0.29297 ^-0.62931 ^0 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 48..55 run {
								name tree/leftarm_pos_48-55
								execute if score .this aj.player.end_walk.frame matches 48 run tp @s ^0.29297 ^-0.62892 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 49 run tp @s ^0.29297 ^-0.62846 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 50 run tp @s ^0.29297 ^-0.62795 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 51 run tp @s ^0.29297 ^-0.6274 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 52 run tp @s ^0.29297 ^-0.62679 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 53 run tp @s ^0.29297 ^-0.62616 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 54 run tp @s ^0.29297 ^-0.62549 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 55 run tp @s ^0.29297 ^-0.62481 ^0 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 56..57 run {
								name tree/leftarm_pos_56-57
								execute if score .this aj.player.end_walk.frame matches 56 run tp @s ^0.29297 ^-0.62411 ^0 ~ ~
								execute if score .this aj.player.end_walk.frame matches 57 run tp @s ^0.29297 ^-0.62341 ^0 ~ ~
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.rightleg] run {
						name tree/rightleg_pos_top
						execute if score .this aj.player.end_walk.frame matches 0..57 run {
							name tree/rightleg_pos_0-57
							execute if score .this aj.player.end_walk.frame matches 0..7 run {
								name tree/rightleg_pos_0-7
								execute if score .this aj.player.end_walk.frame matches 0 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 1 run tp @s ^-0.11133 ^-1.20994 ^0.02414 ~ ~
								execute if score .this aj.player.end_walk.frame matches 2 run tp @s ^-0.11133 ^-1.2101 ^0.06707 ~ ~
								execute if score .this aj.player.end_walk.frame matches 3 run tp @s ^-0.11133 ^-1.21038 ^0.11342 ~ ~
								execute if score .this aj.player.end_walk.frame matches 4 run tp @s ^-0.11133 ^-1.21066 ^0.15367 ~ ~
								execute if score .this aj.player.end_walk.frame matches 5 run tp @s ^-0.11133 ^-1.2108 ^0.17687 ~ ~
								execute if score .this aj.player.end_walk.frame matches 6 run tp @s ^-0.11133 ^-1.21078 ^0.20223 ~ ~
								execute if score .this aj.player.end_walk.frame matches 7 run tp @s ^-0.11133 ^-1.21074 ^0.22645 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 8..15 run {
								name tree/rightleg_pos_8-15
								execute if score .this aj.player.end_walk.frame matches 8 run tp @s ^-0.11133 ^-1.21066 ^0.24858 ~ ~
								execute if score .this aj.player.end_walk.frame matches 9 run tp @s ^-0.11133 ^-1.21058 ^0.26768 ~ ~
								execute if score .this aj.player.end_walk.frame matches 10 run tp @s ^-0.11133 ^-1.21048 ^0.28279 ~ ~
								execute if score .this aj.player.end_walk.frame matches 11 run tp @s ^-0.11133 ^-1.21038 ^0.29329 ~ ~
								execute if score .this aj.player.end_walk.frame matches 12 run tp @s ^-0.11133 ^-1.21028 ^0.29699 ~ ~
								execute if score .this aj.player.end_walk.frame matches 13 run tp @s ^-0.11133 ^-1.18936 ^0.29633 ~ ~
								execute if score .this aj.player.end_walk.frame matches 14 run tp @s ^-0.11133 ^-1.16844 ^0.29486 ~ ~
								execute if score .this aj.player.end_walk.frame matches 15 run tp @s ^-0.11133 ^-1.14754 ^0.29551 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 16..23 run {
								name tree/rightleg_pos_16-23
								execute if score .this aj.player.end_walk.frame matches 16 run tp @s ^-0.11133 ^-1.16831 ^0.29861 ~ ~
								execute if score .this aj.player.end_walk.frame matches 17 run tp @s ^-0.11133 ^-1.1891 ^0.30133 ~ ~
								execute if score .this aj.player.end_walk.frame matches 18 run tp @s ^-0.11133 ^-1.20991 ^0.30361 ~ ~
								execute if score .this aj.player.end_walk.frame matches 19 run tp @s ^-0.11133 ^-1.20989 ^0.30536 ~ ~
								execute if score .this aj.player.end_walk.frame matches 20 run tp @s ^-0.11133 ^-1.20987 ^0.29361 ~ ~
								execute if score .this aj.player.end_walk.frame matches 21 run tp @s ^-0.11133 ^-1.20987 ^0.27349 ~ ~
								execute if score .this aj.player.end_walk.frame matches 22 run tp @s ^-0.11133 ^-1.20987 ^0.24289 ~ ~
								execute if score .this aj.player.end_walk.frame matches 23 run tp @s ^-0.11133 ^-1.20987 ^0.20841 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 24..31 run {
								name tree/rightleg_pos_24-31
								execute if score .this aj.player.end_walk.frame matches 24 run tp @s ^-0.11133 ^-1.20987 ^0.16551 ~ ~
								execute if score .this aj.player.end_walk.frame matches 25 run tp @s ^-0.11133 ^-1.20987 ^0.12176 ~ ~
								execute if score .this aj.player.end_walk.frame matches 26 run tp @s ^-0.11133 ^-1.20987 ^0.08477 ~ ~
								execute if score .this aj.player.end_walk.frame matches 27 run tp @s ^-0.11133 ^-1.20987 ^0.06087 ~ ~
								execute if score .this aj.player.end_walk.frame matches 28 run tp @s ^-0.11133 ^-1.20987 ^0.03931 ~ ~
								execute if score .this aj.player.end_walk.frame matches 29 run tp @s ^-0.11133 ^-1.20987 ^0.02063 ~ ~
								execute if score .this aj.player.end_walk.frame matches 30 run tp @s ^-0.11133 ^-1.20987 ^0.00539 ~ ~
								execute if score .this aj.player.end_walk.frame matches 31 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 32..39 run {
								name tree/rightleg_pos_32-39
								execute if score .this aj.player.end_walk.frame matches 32 run tp @s ^-0.11133 ^-1.19425 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 33 run tp @s ^-0.11133 ^-1.17862 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 34 run tp @s ^-0.11133 ^-1.19425 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 35 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 36 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 37 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 38 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 39 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 40..47 run {
								name tree/rightleg_pos_40-47
								execute if score .this aj.player.end_walk.frame matches 40 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 41 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 42 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 43 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 44 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 45 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 46 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 47 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 48..55 run {
								name tree/rightleg_pos_48-55
								execute if score .this aj.player.end_walk.frame matches 48 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 49 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 50 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 51 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 52 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 53 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 54 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 55 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 56..57 run {
								name tree/rightleg_pos_56-57
								execute if score .this aj.player.end_walk.frame matches 56 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 57 run tp @s ^-0.11133 ^-1.20987 ^-0.00586 ~ ~
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.leftleg] run {
						name tree/leftleg_pos_top
						execute if score .this aj.player.end_walk.frame matches 0..57 run {
							name tree/leftleg_pos_0-57
							execute if score .this aj.player.end_walk.frame matches 0..7 run {
								name tree/leftleg_pos_0-7
								execute if score .this aj.player.end_walk.frame matches 0 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 1 run tp @s ^0.11133 ^-1.20994 ^0.02414 ~ ~
								execute if score .this aj.player.end_walk.frame matches 2 run tp @s ^0.11133 ^-1.2101 ^0.06707 ~ ~
								execute if score .this aj.player.end_walk.frame matches 3 run tp @s ^0.11133 ^-1.21038 ^0.11342 ~ ~
								execute if score .this aj.player.end_walk.frame matches 4 run tp @s ^0.11133 ^-1.21066 ^0.15367 ~ ~
								execute if score .this aj.player.end_walk.frame matches 5 run tp @s ^0.11133 ^-1.2108 ^0.17687 ~ ~
								execute if score .this aj.player.end_walk.frame matches 6 run tp @s ^0.11133 ^-1.21078 ^0.20223 ~ ~
								execute if score .this aj.player.end_walk.frame matches 7 run tp @s ^0.11133 ^-1.20033 ^0.22601 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 8..15 run {
								name tree/leftleg_pos_8-15
								execute if score .this aj.player.end_walk.frame matches 8 run tp @s ^0.11133 ^-1.18985 ^0.24775 ~ ~
								execute if score .this aj.player.end_walk.frame matches 9 run tp @s ^0.11133 ^-1.17935 ^0.26652 ~ ~
								execute if score .this aj.player.end_walk.frame matches 10 run tp @s ^0.11133 ^-1.18966 ^0.28208 ~ ~
								execute if score .this aj.player.end_walk.frame matches 11 run tp @s ^0.11133 ^-1.19997 ^0.29298 ~ ~
								execute if score .this aj.player.end_walk.frame matches 12 run tp @s ^0.11133 ^-1.21028 ^0.29699 ~ ~
								execute if score .this aj.player.end_walk.frame matches 13 run tp @s ^0.11133 ^-1.21019 ^0.2968 ~ ~
								execute if score .this aj.player.end_walk.frame matches 14 run tp @s ^0.11133 ^-1.2101 ^0.29563 ~ ~
								execute if score .this aj.player.end_walk.frame matches 15 run tp @s ^0.11133 ^-1.21003 ^0.29642 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 16..23 run {
								name tree/leftleg_pos_16-23
								execute if score .this aj.player.end_walk.frame matches 16 run tp @s ^0.11133 ^-1.20998 ^0.29906 ~ ~
								execute if score .this aj.player.end_walk.frame matches 17 run tp @s ^0.11133 ^-1.20994 ^0.30149 ~ ~
								execute if score .this aj.player.end_walk.frame matches 18 run tp @s ^0.11133 ^-1.20991 ^0.30361 ~ ~
								execute if score .this aj.player.end_walk.frame matches 19 run tp @s ^0.11133 ^-1.20989 ^0.30536 ~ ~
								execute if score .this aj.player.end_walk.frame matches 20 run tp @s ^0.11133 ^-1.19946 ^0.29361 ~ ~
								execute if score .this aj.player.end_walk.frame matches 21 run tp @s ^0.11133 ^-1.18904 ^0.27349 ~ ~
								execute if score .this aj.player.end_walk.frame matches 22 run tp @s ^0.11133 ^-1.17862 ^0.24289 ~ ~
								execute if score .this aj.player.end_walk.frame matches 23 run tp @s ^0.11133 ^-1.16821 ^0.20841 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 24..31 run {
								name tree/leftleg_pos_24-31
								execute if score .this aj.player.end_walk.frame matches 24 run tp @s ^0.11133 ^-1.15779 ^0.16551 ~ ~
								execute if score .this aj.player.end_walk.frame matches 25 run tp @s ^0.11133 ^-1.14737 ^0.12176 ~ ~
								execute if score .this aj.player.end_walk.frame matches 26 run tp @s ^0.11133 ^-1.15779 ^0.08477 ~ ~
								execute if score .this aj.player.end_walk.frame matches 27 run tp @s ^0.11133 ^-1.16821 ^0.06087 ~ ~
								execute if score .this aj.player.end_walk.frame matches 28 run tp @s ^0.11133 ^-1.17863 ^0.03931 ~ ~
								execute if score .this aj.player.end_walk.frame matches 29 run tp @s ^0.11133 ^-1.18904 ^0.02063 ~ ~
								execute if score .this aj.player.end_walk.frame matches 30 run tp @s ^0.11133 ^-1.19946 ^0.00539 ~ ~
								execute if score .this aj.player.end_walk.frame matches 31 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 32..39 run {
								name tree/leftleg_pos_32-39
								execute if score .this aj.player.end_walk.frame matches 32 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 33 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 34 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 35 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 36 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 37 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 38 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 39 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 40..47 run {
								name tree/leftleg_pos_40-47
								execute if score .this aj.player.end_walk.frame matches 40 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 41 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 42 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 43 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 44 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 45 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 46 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 47 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 48..55 run {
								name tree/leftleg_pos_48-55
								execute if score .this aj.player.end_walk.frame matches 48 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 49 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 50 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 51 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 52 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 53 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 54 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 55 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
							}
							execute if score .this aj.player.end_walk.frame matches 56..57 run {
								name tree/leftleg_pos_56-57
								execute if score .this aj.player.end_walk.frame matches 56 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
								execute if score .this aj.player.end_walk.frame matches 57 run tp @s ^0.11133 ^-1.20987 ^-0.00586 ~ ~
							}
						}
					}
					execute store result entity @s Air short 1 run scoreboard players get .this aj.player.end_walk.frame
				}
				# Bone Displays
				execute if entity @s[type=minecraft:armor_stand] run {
					name tree/display_bone_name
					# Rotation
					execute if entity @s[tag=aj.player.bone.head] run {
						name tree/head_rot_top
						execute if score .this aj.player.end_walk.frame matches 0..57 run {
							name tree/head_rot_0-57
							execute if score .this aj.player.end_walk.frame matches 0..7 run {
								name tree/head_rot_0-7
								execute if score .this aj.player.end_walk.frame matches 0 run data modify entity @s Pose.Head set value [0f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 1 run data modify entity @s Pose.Head set value [0.34f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 2 run data modify entity @s Pose.Head set value [0.82f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 3 run data modify entity @s Pose.Head set value [1.38f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 4 run data modify entity @s Pose.Head set value [1.96f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 5 run data modify entity @s Pose.Head set value [2.5f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 6 run data modify entity @s Pose.Head set value [2.7517f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 7 run data modify entity @s Pose.Head set value [3.0022f,0f,0f]
							}
							execute if score .this aj.player.end_walk.frame matches 8..15 run {
								name tree/head_rot_8-15
								execute if score .this aj.player.end_walk.frame matches 8 run data modify entity @s Pose.Head set value [3.245f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 9 run data modify entity @s Pose.Head set value [3.4733f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 10 run data modify entity @s Pose.Head set value [3.6806f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 11 run data modify entity @s Pose.Head set value [3.86f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 12 run data modify entity @s Pose.Head set value [4.005f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 13 run data modify entity @s Pose.Head set value [4.1089f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 14 run data modify entity @s Pose.Head set value [4.165f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 15 run data modify entity @s Pose.Head set value [4.1667f,0f,0f]
							}
							execute if score .this aj.player.end_walk.frame matches 16..23 run {
								name tree/head_rot_16-23
								execute if score .this aj.player.end_walk.frame matches 16 run data modify entity @s Pose.Head set value [4.0622f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 17 run data modify entity @s Pose.Head set value [3.82f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 18 run data modify entity @s Pose.Head set value [3.4633f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 19 run data modify entity @s Pose.Head set value [3.0156f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 20 run data modify entity @s Pose.Head set value [2.5f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 21 run data modify entity @s Pose.Head set value [1.88f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 22 run data modify entity @s Pose.Head set value [1.29f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 23 run data modify entity @s Pose.Head set value [0.76f,0f,0f]
							}
							execute if score .this aj.player.end_walk.frame matches 24..31 run {
								name tree/head_rot_24-31
								execute if score .this aj.player.end_walk.frame matches 24 run data modify entity @s Pose.Head set value [0.32f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 25 run data modify entity @s Pose.Head set value [0f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 26 run data modify entity @s Pose.Head set value [-0.2025f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 27 run data modify entity @s Pose.Head set value [-0.32f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 28 run data modify entity @s Pose.Head set value [-0.3675f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 29 run data modify entity @s Pose.Head set value [-0.36f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 30 run data modify entity @s Pose.Head set value [-0.3125f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 31 run data modify entity @s Pose.Head set value [-0.24f,0f,0f]
							}
							execute if score .this aj.player.end_walk.frame matches 32..39 run {
								name tree/head_rot_32-39
								execute if score .this aj.player.end_walk.frame matches 32 run data modify entity @s Pose.Head set value [-0.1575f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 33 run data modify entity @s Pose.Head set value [-0.08f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 34 run data modify entity @s Pose.Head set value [-0.0225f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 35 run data modify entity @s Pose.Head set value [0f,0f,0f]
							}
							execute if score .this aj.player.end_walk.frame matches 57 run data modify entity @s Pose.Head set value [0f,0f,0f]
						}
					}
					execute if entity @s[tag=aj.player.bone.body] run {
						name tree/body_rot_top
						execute if score .this aj.player.end_walk.frame matches 0..57 run {
							name tree/body_rot_0-57
							execute if score .this aj.player.end_walk.frame matches 0..7 run {
								name tree/body_rot_0-7
								execute if score .this aj.player.end_walk.frame matches 0 run data modify entity @s Pose.Head set value [0f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 1 run data modify entity @s Pose.Head set value [-1.18f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 2 run data modify entity @s Pose.Head set value [-2.94f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 3 run data modify entity @s Pose.Head set value [-4.86f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 4 run data modify entity @s Pose.Head set value [-6.52f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 5 run data modify entity @s Pose.Head set value [-7.5f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 6 run data modify entity @s Pose.Head set value [-7.6983f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 7 run data modify entity @s Pose.Head set value [-7.7978f,0f,0f]
							}
							execute if score .this aj.player.end_walk.frame matches 8..15 run {
								name tree/body_rot_8-15
								execute if score .this aj.player.end_walk.frame matches 8 run data modify entity @s Pose.Head set value [-7.805f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 9 run data modify entity @s Pose.Head set value [-7.7267f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 10 run data modify entity @s Pose.Head set value [-7.5694f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 11 run data modify entity @s Pose.Head set value [-7.34f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 12 run data modify entity @s Pose.Head set value [-7.045f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 13 run data modify entity @s Pose.Head set value [-6.6911f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 14 run data modify entity @s Pose.Head set value [-6.285f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 15 run data modify entity @s Pose.Head set value [-5.8333f,0f,0f]
							}
							execute if score .this aj.player.end_walk.frame matches 16..23 run {
								name tree/body_rot_16-23
								execute if score .this aj.player.end_walk.frame matches 16 run data modify entity @s Pose.Head set value [-5.2978f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 17 run data modify entity @s Pose.Head set value [-4.66f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 18 run data modify entity @s Pose.Head set value [-3.9567f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 19 run data modify entity @s Pose.Head set value [-3.2244f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 20 run data modify entity @s Pose.Head set value [-2.5f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 21 run data modify entity @s Pose.Head set value [-1.88f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 22 run data modify entity @s Pose.Head set value [-1.29f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 23 run data modify entity @s Pose.Head set value [-0.76f,0f,0f]
							}
							execute if score .this aj.player.end_walk.frame matches 24..31 run {
								name tree/body_rot_24-31
								execute if score .this aj.player.end_walk.frame matches 24 run data modify entity @s Pose.Head set value [-0.32f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 25 run data modify entity @s Pose.Head set value [0f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 26 run data modify entity @s Pose.Head set value [0.2025f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 27 run data modify entity @s Pose.Head set value [0.32f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 28 run data modify entity @s Pose.Head set value [0.3675f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 29 run data modify entity @s Pose.Head set value [0.36f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 30 run data modify entity @s Pose.Head set value [0.3125f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 31 run data modify entity @s Pose.Head set value [0.24f,0f,0f]
							}
							execute if score .this aj.player.end_walk.frame matches 32..39 run {
								name tree/body_rot_32-39
								execute if score .this aj.player.end_walk.frame matches 32 run data modify entity @s Pose.Head set value [0.1575f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 33 run data modify entity @s Pose.Head set value [0.08f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 34 run data modify entity @s Pose.Head set value [0.0225f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 35 run data modify entity @s Pose.Head set value [0f,0f,0f]
							}
							execute if score .this aj.player.end_walk.frame matches 57 run data modify entity @s Pose.Head set value [0f,0f,0f]
						}
					}
					execute if entity @s[tag=aj.player.bone.rightarm] run {
						name tree/rightarm_rot_top
						execute if score .this aj.player.end_walk.frame matches 0..57 run {
							name tree/rightarm_rot_0-57
							execute if score .this aj.player.end_walk.frame matches 0..7 run {
								name tree/rightarm_rot_0-7
								execute if score .this aj.player.end_walk.frame matches 0 run data modify entity @s Pose.Head set value [0f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 1 run data modify entity @s Pose.Head set value [-2.919f,-0.0074f,-0.0324f]
								execute if score .this aj.player.end_walk.frame matches 2 run data modify entity @s Pose.Head set value [-7.2057f,-0.0288f,-0.1103f]
								execute if score .this aj.player.end_walk.frame matches 3 run data modify entity @s Pose.Head set value [-12.1551f,-0.0608f,-0.2049f]
								execute if score .this aj.player.end_walk.frame matches 4 run data modify entity @s Pose.Head set value [-17.0619f,-0.0949f,-0.2887f]
								execute if score .this aj.player.end_walk.frame matches 5 run data modify entity @s Pose.Head set value [-21.221f,-0.117f,-0.3364f]
								execute if score .this aj.player.end_walk.frame matches 6 run data modify entity @s Pose.Head set value [-24.2455f,-0.1135f,-0.3226f]
								execute if score .this aj.player.end_walk.frame matches 7 run data modify entity @s Pose.Head set value [-26.533f,-0.0776f,-0.2194f]
							}
							execute if score .this aj.player.end_walk.frame matches 8..15 run {
								name tree/rightarm_rot_8-15
								execute if score .this aj.player.end_walk.frame matches 8 run data modify entity @s Pose.Head set value [-27.805f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 9 run data modify entity @s Pose.Head set value [-27.9489f,0.2676f,0.6907f]
								execute if score .this aj.player.end_walk.frame matches 10 run data modify entity @s Pose.Head set value [-26.5284f,0.669f,1.7069f]
								execute if score .this aj.player.end_walk.frame matches 11 run data modify entity @s Pose.Head set value [-24.0543f,1.0882f,2.8403f]
								execute if score .this aj.player.end_walk.frame matches 12 run data modify entity @s Pose.Head set value [-21.0395f,1.412f,3.8809f]
								execute if score .this aj.player.end_walk.frame matches 13 run data modify entity @s Pose.Head set value [-17.9982f,1.5321f,4.6157f]
								execute if score .this aj.player.end_walk.frame matches 14 run data modify entity @s Pose.Head set value [-15.067f,1.4204f,4.9969f]
								execute if score .this aj.player.end_walk.frame matches 15 run data modify entity @s Pose.Head set value [-11.4776f,1.1619f,5.274f]
							}
							execute if score .this aj.player.end_walk.frame matches 16..23 run {
								name tree/rightarm_rot_16-23
								execute if score .this aj.player.end_walk.frame matches 16 run data modify entity @s Pose.Head set value [-7.5941f,0.8129f,5.429f]
								execute if score .this aj.player.end_walk.frame matches 17 run data modify entity @s Pose.Head set value [-3.8f,0.4327f,5.4445f]
								execute if score .this aj.player.end_walk.frame matches 18 run data modify entity @s Pose.Head set value [-0.5332f,0.0876f,5.3047f]
								execute if score .this aj.player.end_walk.frame matches 19 run data modify entity @s Pose.Head set value [1.7688f,-0.1547f,4.9976f]
								execute if score .this aj.player.end_walk.frame matches 20 run data modify entity @s Pose.Head set value [2.8515f,-0.2646f,4.6267f]
								execute if score .this aj.player.end_walk.frame matches 21 run data modify entity @s Pose.Head set value [3.3617f,-0.3214f,4.0754f]
								execute if score .this aj.player.end_walk.frame matches 22 run data modify entity @s Pose.Head set value [3.4723f,-0.3351f,3.3983f]
								execute if score .this aj.player.end_walk.frame matches 23 run data modify entity @s Pose.Head set value [3.2544f,-0.31f,2.6529f]
							}
							execute if score .this aj.player.end_walk.frame matches 24..31 run {
								name tree/rightarm_rot_24-31
								execute if score .this aj.player.end_walk.frame matches 24 run data modify entity @s Pose.Head set value [2.7815f,-0.2548f,1.8989f]
								execute if score .this aj.player.end_walk.frame matches 25 run data modify entity @s Pose.Head set value [2.1306f,-0.1815f,1.1966f]
								execute if score .this aj.player.end_walk.frame matches 26 run data modify entity @s Pose.Head set value [1.4151f,-0.1052f,0.6065f]
								execute if score .this aj.player.end_walk.frame matches 27 run data modify entity @s Pose.Head set value [0.7826f,-0.0405f,0.1882f]
								execute if score .this aj.player.end_walk.frame matches 28 run data modify entity @s Pose.Head set value [0.3675f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 29 run data modify entity @s Pose.Head set value [0.1708f,0.0173f,0.0538f]
								execute if score .this aj.player.end_walk.frame matches 30 run data modify entity @s Pose.Head set value [0.0569f,0.0263f,0.2827f]
								execute if score .this aj.player.end_walk.frame matches 31 run data modify entity @s Pose.Head set value [0.0368f,0.0293f,0.6396f]
							}
							execute if score .this aj.player.end_walk.frame matches 32..39 run {
								name tree/rightarm_rot_32-39
								execute if score .this aj.player.end_walk.frame matches 32 run data modify entity @s Pose.Head set value [0.1143f,0.0284f,1.0761f]
								execute if score .this aj.player.end_walk.frame matches 33 run data modify entity @s Pose.Head set value [0.2867f,0.025f,1.5441f]
								execute if score .this aj.player.end_walk.frame matches 34 run data modify entity @s Pose.Head set value [0.5449f,0.0201f,1.9977f]
								execute if score .this aj.player.end_walk.frame matches 35 run data modify entity @s Pose.Head set value [0.874f,0.0137f,2.3946f]
								execute if score .this aj.player.end_walk.frame matches 36 run data modify entity @s Pose.Head set value [1.2271f,0.007f,2.6974f]
								execute if score .this aj.player.end_walk.frame matches 37 run data modify entity @s Pose.Head set value [1.544f,0.002f,2.8746f]
								execute if score .this aj.player.end_walk.frame matches 38 run data modify entity @s Pose.Head set value [1.7852f,0f,2.9018f]
								execute if score .this aj.player.end_walk.frame matches 39 run data modify entity @s Pose.Head set value [1.8746f,0f,2.6971f]
							}
							execute if score .this aj.player.end_walk.frame matches 40..47 run {
								name tree/rightarm_rot_40-47
								execute if score .this aj.player.end_walk.frame matches 40 run data modify entity @s Pose.Head set value [1.9406f,0f,2.4838f]
								execute if score .this aj.player.end_walk.frame matches 41 run data modify entity @s Pose.Head set value [1.9824f,0f,2.2645f]
								execute if score .this aj.player.end_walk.frame matches 42 run data modify entity @s Pose.Head set value [1.9996f,0f,2.0419f]
								execute if score .this aj.player.end_walk.frame matches 43 run data modify entity @s Pose.Head set value [1.9918f,0f,1.8187f]
								execute if score .this aj.player.end_walk.frame matches 44 run data modify entity @s Pose.Head set value [1.9592f,0f,1.5978f]
								execute if score .this aj.player.end_walk.frame matches 45 run data modify entity @s Pose.Head set value [1.9021f,0f,1.382f]
								execute if score .this aj.player.end_walk.frame matches 46 run data modify entity @s Pose.Head set value [1.8214f,0f,1.1738f]
								execute if score .this aj.player.end_walk.frame matches 47 run data modify entity @s Pose.Head set value [1.7179f,0f,0.9759f]
							}
							execute if score .this aj.player.end_walk.frame matches 48..55 run {
								name tree/rightarm_rot_48-55
								execute if score .this aj.player.end_walk.frame matches 48 run data modify entity @s Pose.Head set value [1.5931f,0f,0.7908f]
								execute if score .this aj.player.end_walk.frame matches 49 run data modify entity @s Pose.Head set value [1.4483f,0f,0.6208f]
								execute if score .this aj.player.end_walk.frame matches 50 run data modify entity @s Pose.Head set value [1.2856f,0f,0.4679f]
								execute if score .this aj.player.end_walk.frame matches 51 run data modify entity @s Pose.Head set value [1.1068f,0f,0.3342f]
								execute if score .this aj.player.end_walk.frame matches 52 run data modify entity @s Pose.Head set value [0.9142f,0f,0.2212f]
								execute if score .this aj.player.end_walk.frame matches 53 run data modify entity @s Pose.Head set value [0.7102f,0f,0.1303f]
								execute if score .this aj.player.end_walk.frame matches 54 run data modify entity @s Pose.Head set value [0.4974f,0f,0.0628f]
								execute if score .this aj.player.end_walk.frame matches 55 run data modify entity @s Pose.Head set value [0.2783f,0f,0.0195f]
							}
							execute if score .this aj.player.end_walk.frame matches 56..57 run {
								name tree/rightarm_rot_56-57
								execute if score .this aj.player.end_walk.frame matches 56 run data modify entity @s Pose.Head set value [0.0558f,0f,0.0008f]
								execute if score .this aj.player.end_walk.frame matches 57 run data modify entity @s Pose.Head set value [-0.1674f,0f,0.007f]
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.leftarm] run {
						name tree/leftarm_rot_top
						execute if score .this aj.player.end_walk.frame matches 0..57 run {
							name tree/leftarm_rot_0-57
							execute if score .this aj.player.end_walk.frame matches 0..7 run {
								name tree/leftarm_rot_0-7
								execute if score .this aj.player.end_walk.frame matches 0 run data modify entity @s Pose.Head set value [0f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 1 run data modify entity @s Pose.Head set value [-1.18f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 2 run data modify entity @s Pose.Head set value [-2.94f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 3 run data modify entity @s Pose.Head set value [-6.599f,0.0095f,0.0319f]
								execute if score .this aj.player.end_walk.frame matches 4 run data modify entity @s Pose.Head set value [-10.7857f,0.0356f,0.1083f]
								execute if score .this aj.player.end_walk.frame matches 5 run data modify entity @s Pose.Head set value [-14.7951f,0.0702f,0.2018f]
								execute if score .this aj.player.end_walk.frame matches 6 run data modify entity @s Pose.Head set value [-18.2402f,0.1008f,0.2867f]
								execute if score .this aj.player.end_walk.frame matches 7 run data modify entity @s Pose.Head set value [-21.5188f,0.1188f,0.3358f]
							}
							execute if score .this aj.player.end_walk.frame matches 8..15 run {
								name tree/leftarm_rot_8-15
								execute if score .this aj.player.end_walk.frame matches 8 run data modify entity @s Pose.Head set value [-24.3521f,0.1141f,0.3224f]
								execute if score .this aj.player.end_walk.frame matches 9 run data modify entity @s Pose.Head set value [-26.4619f,0.0773f,0.2195f]
								execute if score .this aj.player.end_walk.frame matches 10 run data modify entity @s Pose.Head set value [-27.5694f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 11 run data modify entity @s Pose.Head set value [-27.5623f,-0.263f,-0.6925f]
								execute if score .this aj.player.end_walk.frame matches 12 run data modify entity @s Pose.Head set value [-26.0041f,-0.6533f,-1.713f]
								execute if score .this aj.player.end_walk.frame matches 13 run data modify entity @s Pose.Head set value [-23.4061f,-1.056f,-2.8525f]
								execute if score .this aj.player.end_walk.frame matches 14 run data modify entity @s Pose.Head set value [-20.281f,-1.3604f,-3.8992f]
								execute if score .this aj.player.end_walk.frame matches 15 run data modify entity @s Pose.Head set value [-17.1429f,-1.4629f,-4.6381f]
							}
							execute if score .this aj.player.end_walk.frame matches 16..23 run {
								name tree/leftarm_rot_16-23
								execute if score .this aj.player.end_walk.frame matches 16 run data modify entity @s Pose.Head set value [-14.0832f,-1.3342f,-5.0205f]
								execute if score .this aj.player.end_walk.frame matches 17 run data modify entity @s Pose.Head set value [-10.309f,-1.0538f,-5.2966f]
								execute if score .this aj.player.end_walk.frame matches 18 run data modify entity @s Pose.Head set value [-6.2589f,-0.6858f,-5.4465f]
								execute if score .this aj.player.end_walk.frame matches 19 run data modify entity @s Pose.Head set value [-2.3709f,-0.2964f,-5.4536f]
								execute if score .this aj.player.end_walk.frame matches 20 run data modify entity @s Pose.Head set value [0.9173f,0.0471f,-5.3052f]
								execute if score .this aj.player.end_walk.frame matches 21 run data modify entity @s Pose.Head set value [3.1082f,0.2718f,-4.9926f]
								execute if score .this aj.player.end_walk.frame matches 22 run data modify entity @s Pose.Head set value [4.042f,0.3621f,-4.6183f]
								execute if score .this aj.player.end_walk.frame matches 23 run data modify entity @s Pose.Head set value [4.4306f,0.401f,-4.063f]
							}
							execute if score .this aj.player.end_walk.frame matches 24..31 run {
								name tree/leftarm_rot_24-31
								execute if score .this aj.player.end_walk.frame matches 24 run data modify entity @s Pose.Head set value [4.3609f,0.3926f,-3.3832f]
								execute if score .this aj.player.end_walk.frame matches 25 run data modify entity @s Pose.Head set value [3.9166f,0.3451f,-2.6377f]
								execute if score .this aj.player.end_walk.frame matches 26 run data modify entity @s Pose.Head set value [3.2105f,0.272f,-1.886f]
								execute if score .this aj.player.end_walk.frame matches 27 run data modify entity @s Pose.Head set value [2.3813f,0.1882f,-1.1878f]
								execute if score .this aj.player.end_walk.frame matches 28 run data modify entity @s Pose.Head set value [1.5466f,0.107f,-0.6024f]
								execute if score .this aj.player.end_walk.frame matches 29 run data modify entity @s Pose.Head set value [0.8202f,0.0406f,-0.1879f]
								execute if score .this aj.player.end_walk.frame matches 30 run data modify entity @s Pose.Head set value [0.3125f,0f,0f]
								execute if score .this aj.player.end_walk.frame matches 31 run data modify entity @s Pose.Head set value [-0.0021f,-0.0174f,-0.0478f]
							}
							execute if score .this aj.player.end_walk.frame matches 32..39 run {
								name tree/leftarm_rot_32-39
								execute if score .this aj.player.end_walk.frame matches 32 run data modify entity @s Pose.Head set value [-0.2888f,-0.0271f,-0.2613f]
								execute if score .this aj.player.end_walk.frame matches 33 run data modify entity @s Pose.Head set value [-0.5534f,-0.0312f,-0.5913f]
								execute if score .this aj.player.end_walk.frame matches 34 run data modify entity @s Pose.Head set value [-0.795f,-0.0309f,-0.9892f]
								execute if score .this aj.player.end_walk.frame matches 35 run data modify entity @s Pose.Head set value [-1.006f,-0.0272f,-1.408f]
								execute if score .this aj.player.end_walk.frame matches 36 run data modify entity @s Pose.Head set value [-1.2007f,-0.0209f,-1.8044f]
								execute if score .this aj.player.end_walk.frame matches 37 run data modify entity @s Pose.Head set value [-1.3987f,-0.0137f,-2.1397f]
								execute if score .this aj.player.end_walk.frame matches 38 run data modify entity @s Pose.Head set value [-1.5935f,-0.007f,-2.381f]
								execute if score .this aj.player.end_walk.frame matches 39 run data modify entity @s Pose.Head set value [-1.777f,-0.002f,-2.5021f]
							}
							execute if score .this aj.player.end_walk.frame matches 40..47 run {
								name tree/leftarm_rot_40-47
								execute if score .this aj.player.end_walk.frame matches 40 run data modify entity @s Pose.Head set value [-1.9406f,0f,-2.4838f]
								execute if score .this aj.player.end_walk.frame matches 41 run data modify entity @s Pose.Head set value [-1.9824f,0f,-2.2645f]
								execute if score .this aj.player.end_walk.frame matches 42 run data modify entity @s Pose.Head set value [-1.9996f,0f,-2.0419f]
								execute if score .this aj.player.end_walk.frame matches 43 run data modify entity @s Pose.Head set value [-1.9918f,0f,-1.8187f]
								execute if score .this aj.player.end_walk.frame matches 44 run data modify entity @s Pose.Head set value [-1.9592f,0f,-1.5978f]
								execute if score .this aj.player.end_walk.frame matches 45 run data modify entity @s Pose.Head set value [-1.9021f,0f,-1.382f]
								execute if score .this aj.player.end_walk.frame matches 46 run data modify entity @s Pose.Head set value [-1.8214f,0f,-1.1738f]
								execute if score .this aj.player.end_walk.frame matches 47 run data modify entity @s Pose.Head set value [-1.7179f,0f,-0.9759f]
							}
							execute if score .this aj.player.end_walk.frame matches 48..55 run {
								name tree/leftarm_rot_48-55
								execute if score .this aj.player.end_walk.frame matches 48 run data modify entity @s Pose.Head set value [-1.5931f,0f,-0.7908f]
								execute if score .this aj.player.end_walk.frame matches 49 run data modify entity @s Pose.Head set value [-1.4483f,0f,-0.6208f]
								execute if score .this aj.player.end_walk.frame matches 50 run data modify entity @s Pose.Head set value [-1.2856f,0f,-0.4679f]
								execute if score .this aj.player.end_walk.frame matches 51 run data modify entity @s Pose.Head set value [-1.1068f,0f,-0.3342f]
								execute if score .this aj.player.end_walk.frame matches 52 run data modify entity @s Pose.Head set value [-0.9142f,0f,-0.2212f]
								execute if score .this aj.player.end_walk.frame matches 53 run data modify entity @s Pose.Head set value [-0.7102f,0f,-0.1303f]
								execute if score .this aj.player.end_walk.frame matches 54 run data modify entity @s Pose.Head set value [-0.4974f,0f,-0.0628f]
								execute if score .this aj.player.end_walk.frame matches 55 run data modify entity @s Pose.Head set value [-0.2783f,0f,-0.0195f]
							}
							execute if score .this aj.player.end_walk.frame matches 56..57 run {
								name tree/leftarm_rot_56-57
								execute if score .this aj.player.end_walk.frame matches 56 run data modify entity @s Pose.Head set value [-0.0558f,0f,-0.0008f]
								execute if score .this aj.player.end_walk.frame matches 57 run data modify entity @s Pose.Head set value [0.1674f,0f,-0.007f]
							}
						}
					}
					execute if entity @s[tag=aj.player.bone.rightleg] run {
						name tree/rightleg_rot_top
						execute if score .this aj.player.end_walk.frame matches 0..57 run {
							name tree/rightleg_rot_0-57
							execute if score .this aj.player.end_walk.frame matches 0..7 run {
								name tree/rightleg_rot_0-7
								execute if score .this aj.player.end_walk.frame matches 0 run data modify entity @s Pose.Head set value [-9.9953f,0.2178f,2.4905f]
								execute if score .this aj.player.end_walk.frame matches 1 run data modify entity @s Pose.Head set value [-10.4149f,0.2361f,2.4888f]
								execute if score .this aj.player.end_walk.frame matches 2 run data modify entity @s Pose.Head set value [-11.0543f,0.2638f,2.486f]
								execute if score .this aj.player.end_walk.frame matches 3 run data modify entity @s Pose.Head set value [-11.7336f,0.2933f,2.4827f]
								execute if score .this aj.player.end_walk.frame matches 4 run data modify entity @s Pose.Head set value [-12.2731f,0.3167f,2.4799f]
								execute if score .this aj.player.end_walk.frame matches 5 run data modify entity @s Pose.Head set value [-12.4929f,0.3262f,2.4786f]
								execute if score .this aj.player.end_walk.frame matches 6 run data modify entity @s Pose.Head set value [-12.4663f,0.3251f,2.4788f]
								execute if score .this aj.player.end_walk.frame matches 7 run data modify entity @s Pose.Head set value [-12.3908f,0.3218f,2.4792f]
							}
							execute if score .this aj.player.end_walk.frame matches 8..15 run {
								name tree/rightleg_rot_8-15
								execute if score .this aj.player.end_walk.frame matches 8 run data modify entity @s Pose.Head set value [-12.2731f,0.3167f,2.4799f]
								execute if score .this aj.player.end_walk.frame matches 9 run data modify entity @s Pose.Head set value [-12.12f,0.3101f,2.4807f]
								execute if score .this aj.player.end_walk.frame matches 10 run data modify entity @s Pose.Head set value [-11.9379f,0.3022f,2.4817f]
								execute if score .this aj.player.end_walk.frame matches 11 run data modify entity @s Pose.Head set value [-11.7336f,0.2933f,2.4827f]
								execute if score .this aj.player.end_walk.frame matches 12 run data modify entity @s Pose.Head set value [-11.5138f,0.2838f,2.4839f]
								execute if score .this aj.player.end_walk.frame matches 13 run data modify entity @s Pose.Head set value [-6.286f,0.2376f,2.4874f]
								execute if score .this aj.player.end_walk.frame matches 14 run data modify entity @s Pose.Head set value [-1.0558f,0.1913f,2.4906f]
								execute if score .this aj.player.end_walk.frame matches 15 run data modify entity @s Pose.Head set value [4.1698f,0.1452f,2.4934f]
							}
							execute if score .this aj.player.end_walk.frame matches 16..23 run {
								name tree/rightleg_rot_16-23
								execute if score .this aj.player.end_walk.frame matches 16 run data modify entity @s Pose.Head set value [9.3844f,0.0995f,2.4959f]
								execute if score .this aj.player.end_walk.frame matches 17 run data modify entity @s Pose.Head set value [14.5812f,0.0546f,2.4981f]
								execute if score .this aj.player.end_walk.frame matches 18 run data modify entity @s Pose.Head set value [19.7536f,0.0108f,2.5f]
								execute if score .this aj.player.end_walk.frame matches 19 run data modify entity @s Pose.Head set value [19.8957f,0.0046f,2.5f]
								execute if score .this aj.player.end_walk.frame matches 20 run data modify entity @s Pose.Head set value [18.6796f,0f,2.5f]
								execute if score .this aj.player.end_walk.frame matches 21 run data modify entity @s Pose.Head set value [16.637f,0f,2.5f]
								execute if score .this aj.player.end_walk.frame matches 22 run data modify entity @s Pose.Head set value [13.5f,0f,2.5f]
								execute if score .this aj.player.end_walk.frame matches 23 run data modify entity @s Pose.Head set value [9.8895f,0f,2.5f]
							}
							execute if score .this aj.player.end_walk.frame matches 24..31 run {
								name tree/rightleg_rot_24-31
								execute if score .this aj.player.end_walk.frame matches 24 run data modify entity @s Pose.Head set value [5.3656f,0f,2.5f]
								execute if score .this aj.player.end_walk.frame matches 25 run data modify entity @s Pose.Head set value [0.8215f,0f,2.5f]
								execute if score .this aj.player.end_walk.frame matches 26 run data modify entity @s Pose.Head set value [-2.85f,0f,2.5f]
								execute if score .this aj.player.end_walk.frame matches 27 run data modify entity @s Pose.Head set value [-5.1032f,0f,2.5f]
								execute if score .this aj.player.end_walk.frame matches 28 run data modify entity @s Pose.Head set value [-7.0756f,0f,2.5f]
								execute if score .this aj.player.end_walk.frame matches 29 run data modify entity @s Pose.Head set value [-8.6364f,0f,2.5f]
								execute if score .this aj.player.end_walk.frame matches 30 run data modify entity @s Pose.Head set value [-9.6548f,0f,2.5f]
								execute if score .this aj.player.end_walk.frame matches 31 run data modify entity @s Pose.Head set value [-10f,0f,2.5f]
							}
							execute if score .this aj.player.end_walk.frame matches 32..39 run {
								name tree/rightleg_rot_32-39
								execute if score .this aj.player.end_walk.frame matches 32 run data modify entity @s Pose.Head set value [-8.125f,0f,2.5f]
								execute if score .this aj.player.end_walk.frame matches 33 run data modify entity @s Pose.Head set value [-6.25f,0f,2.5f]
								execute if score .this aj.player.end_walk.frame matches 34 run data modify entity @s Pose.Head set value [-4.375f,0f,2.5f]
								execute if score .this aj.player.end_walk.frame matches 35 run data modify entity @s Pose.Head set value [-2.5f,0f,2.5f]
							}
							execute if score .this aj.player.end_walk.frame matches 57 run data modify entity @s Pose.Head set value [-2.5f,0f,2.5f]
						}
					}
					execute if entity @s[tag=aj.player.bone.leftleg] run {
						name tree/leftleg_rot_top
						execute if score .this aj.player.end_walk.frame matches 0..57 run {
							name tree/leftleg_rot_0-57
							execute if score .this aj.player.end_walk.frame matches 0..7 run {
								name tree/leftleg_rot_0-7
								execute if score .this aj.player.end_walk.frame matches 0 run data modify entity @s Pose.Head set value [-9.9907f,-0.434f,-2.4621f]
								execute if score .this aj.player.end_walk.frame matches 1 run data modify entity @s Pose.Head set value [-10.4103f,-0.452f,-2.4588f]
								execute if score .this aj.player.end_walk.frame matches 2 run data modify entity @s Pose.Head set value [-11.0497f,-0.4794f,-2.4536f]
								execute if score .this aj.player.end_walk.frame matches 3 run data modify entity @s Pose.Head set value [-11.7291f,-0.5085f,-2.4478f]
								execute if score .this aj.player.end_walk.frame matches 4 run data modify entity @s Pose.Head set value [-12.2687f,-0.5316f,-2.4429f]
								execute if score .this aj.player.end_walk.frame matches 5 run data modify entity @s Pose.Head set value [-12.4885f,-0.5409f,-2.4408f]
								execute if score .this aj.player.end_walk.frame matches 6 run data modify entity @s Pose.Head set value [-12.4618f,-0.5398f,-2.4411f]
								execute if score .this aj.player.end_walk.frame matches 7 run data modify entity @s Pose.Head set value [-9.8886f,-0.4282f,-2.451f]
							}
							execute if score .this aj.player.end_walk.frame matches 8..15 run {
								name tree/leftleg_rot_8-15
								execute if score .this aj.player.end_walk.frame matches 8 run data modify entity @s Pose.Head set value [-7.2733f,-0.3148f,-2.461f]
								execute if score .this aj.player.end_walk.frame matches 9 run data modify entity @s Pose.Head set value [-4.6224f,-0.1999f,-2.4706f]
								execute if score .this aj.player.end_walk.frame matches 10 run data modify entity @s Pose.Head set value [-1.9427f,-0.0836f,-2.4796f]
								execute if score .this aj.player.end_walk.frame matches 11 run data modify entity @s Pose.Head set value [0.7592f,0.0337f,-2.4879f]
								execute if score .this aj.player.end_walk.frame matches 12 run data modify entity @s Pose.Head set value [3.4767f,0.1517f,-2.4954f]
								execute if score .this aj.player.end_walk.frame matches 13 run data modify entity @s Pose.Head set value [3.7054f,0.1617f,-2.4948f]
								execute if score .this aj.player.end_walk.frame matches 14 run data modify entity @s Pose.Head set value [3.9363f,0.1717f,-2.4941f]
								execute if score .this aj.player.end_walk.frame matches 15 run data modify entity @s Pose.Head set value [4.1627f,0.1816f,-2.4934f]
							}
							execute if score .this aj.player.end_walk.frame matches 16..23 run {
								name tree/leftleg_rot_16-23
								execute if score .this aj.player.end_walk.frame matches 16 run data modify entity @s Pose.Head set value [4.3781f,0.191f,-2.4927f]
								execute if score .this aj.player.end_walk.frame matches 17 run data modify entity @s Pose.Head set value [4.5757f,0.1996f,-2.492f]
								execute if score .this aj.player.end_walk.frame matches 18 run data modify entity @s Pose.Head set value [4.7488f,0.2071f,-2.4914f]
								execute if score .this aj.player.end_walk.frame matches 19 run data modify entity @s Pose.Head set value [4.8909f,0.2133f,-2.4909f]
								execute if score .this aj.player.end_walk.frame matches 20 run data modify entity @s Pose.Head set value [3.7464f,0.2184f,-2.4904f]
								execute if score .this aj.player.end_walk.frame matches 21 run data modify entity @s Pose.Head set value [2.4976f,0.2189f,-2.4902f]
								execute if score .this aj.player.end_walk.frame matches 22 run data modify entity @s Pose.Head set value [1.2488f,0.2195f,-2.4901f]
								execute if score .this aj.player.end_walk.frame matches 23 run data modify entity @s Pose.Head set value [0f,0.22f,-2.49f]
							}
							execute if score .this aj.player.end_walk.frame matches 24..31 run {
								name tree/leftleg_rot_24-31
								execute if score .this aj.player.end_walk.frame matches 24 run data modify entity @s Pose.Head set value [1.4991f,0.2196f,-2.4901f]
								execute if score .this aj.player.end_walk.frame matches 25 run data modify entity @s Pose.Head set value [2.9981f,0.2191f,-2.4902f]
								execute if score .this aj.player.end_walk.frame matches 26 run data modify entity @s Pose.Head set value [4.4972f,0.2187f,-2.4903f]
								execute if score .this aj.player.end_walk.frame matches 27 run data modify entity @s Pose.Head set value [5.9962f,0.2183f,-2.4904f]
								execute if score .this aj.player.end_walk.frame matches 28 run data modify entity @s Pose.Head set value [7.4953f,0.2178f,-2.4905f]
								execute if score .this aj.player.end_walk.frame matches 29 run data modify entity @s Pose.Head set value [6.6619f,0.2178f,-2.4905f]
								execute if score .this aj.player.end_walk.frame matches 30 run data modify entity @s Pose.Head set value [5.8286f,0.2178f,-2.4905f]
								execute if score .this aj.player.end_walk.frame matches 31 run data modify entity @s Pose.Head set value [4.9953f,0.2178f,-2.4905f]
							}
							execute if score .this aj.player.end_walk.frame matches 57 run data modify entity @s Pose.Head set value [4.9953f,0.2178f,-2.4905f]
						}
					}
					# Scaling
					# Make sure rotation stays aligned with root entity
					execute positioned as @s run tp @s ~ ~ ~ ~ ~
				}
			}
			# Play scripts as root entity if scripts enabled
			execute if score .noScripts aj.i matches 0 run {
				execute if score .this aj.player.end_walk.frame matches 6 run {
					scoreboard players operation @s ex.state = .WAITING_FOR_ANIM ex.state
				}
				execute if score .this aj.player.end_walk.frame matches 11 run {
					playsound minecraft:block.stone.step player @a ~ ~ ~ 0.125 1
				}
				execute if score .this aj.player.end_walk.frame matches 18 run {
					playsound minecraft:block.stone.step player @a ~ ~ ~ 0.125 1
				}
				execute if score .this aj.player.end_walk.frame matches 29 run {
					playsound minecraft:block.stone.step player @a ~ ~ ~ 0.125 1
				}
				execute if score .this aj.player.end_walk.frame matches 34 run {
					playsound minecraft:block.stone.step player @a ~ ~ ~ 0.125 1
				}
				execute if score .this aj.player.end_walk.frame matches 56 run {
					scoreboard players operation @s ex.state = .IDLE ex.state
					function player:animations/idle/play
				}
			}
			# Increment frame
			scoreboard players operation @s aj.player.end_walk.frame += .aj.player.framerate aj.i
			# Let the anim_loop know we're still running
			scoreboard players set .aj.animation aj.player.animating 1
			# If (the next frame is the end of the animation) perform the necessary actions for the loop mode of the animation
			execute if score .aj.player.framerate aj.i matches 1.. if score @s aj.player.end_walk.frame matches 58.. run function player:animations/end_walk/edge
			execute if score .aj.player.framerate aj.i matches ..0 if score @s aj.player.end_walk.frame matches ..-1 run function player:animations/end_walk/edge
			# execute unless score @s aj.player.end_walk.frame matches 0..57 run function player:animations/end_walk/edge
		}
		# Performs a loop mode action depending on what the animation's configured loop mode is
		function edge {
			# Play Once
			execute if score @s aj.player.end_walk.loopMode matches 0 run function player:animations/end_walk/stop
			# Hold on last frame
			execute if score @s aj.player.end_walk.loopMode matches 1 run function player:animations/end_walk/pause
			# loop
			execute if score @s aj.player.end_walk.loopMode matches 2 run {
				execute (if score @s aj.player.end_walk.frame matches ..1) {
					scoreboard players set @s aj.player.end_walk.frame 58
				} else {
					scoreboard players set @s aj.player.end_walk.frame 0
				}
			}
		}
	}
}