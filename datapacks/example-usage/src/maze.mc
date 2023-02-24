
function remove_walls {
	fill ~ ~1 ~ ~<%4*40%> ~1 ~<%4*40%> air
}
function place{
	kill @e[type=marker,tag=maze.target]
	fill ~ ~ ~ ~<%4*40%> ~ ~<%4*40%> air
	fill ~ ~1 ~ ~<%4*40%> ~1 ~<%4*40%> air
	fill ~ ~ ~ ~<%4*10%> ~ ~<%4*10%> red_concrete
	fill ~ ~1 ~ ~<%4*10%> ~1 ~<%4*10%> stone
	kill @e[tag=maze.gen]
	summon armor_stand ~2 ~1 ~2 {Tags:[maze.gen]}
	summon marker ~2 ~1 ~2 {Tags:['maze.target']}

	function maze:go
}
function go{
	execute if entity @e[tag=maze.gen] run schedule function maze:go 1t
	LOOP(200,i){
		execute as @e[tag=maze.gen] at @s run{
			name gen_tick
			execute if block ~4 ~ ~ stone run summon armor_stand ~4 ~ ~ {Tags:[potential,a]}
			execute if block ~-4 ~ ~ stone run summon armor_stand ~-4 ~ ~ {Tags:[potential,b]}
			execute if block ~ ~ ~4 stone run summon armor_stand ~ ~ ~4 {Tags:[potential,c]}
			execute if block ~ ~ ~-4 stone run summon armor_stand ~ ~ ~-4 {Tags:[potential,d]}
			execute unless entity @e[tag=potential] run{
				# backtrace
				fill ~1 ~ ~1 ~-1 ~ ~-1 air
				execute unless entity @s[tag=temp] unless block ~4 ~-1 ~ air unless block ~-4 ~-1 ~ air unless block ~ ~-1 ~-4 air unless block ~ ~-1 ~4 air if block ~4 ~ ~ air if block ~-4 ~ ~ air if block ~ ~ ~4 air if block ~ ~ ~-4 air run{
					fill ~-4 ~ ~-1 ~4 ~ ~1 air
					fill ~-1 ~ ~-4 ~1 ~ ~4 air
					# function example:summon
					# fill ~-4 ~-1 ~ ~4 ~-1 ~ gray_concrete replace red_concrete
					# fill ~ ~-1 ~-4 ~ ~-1 ~4 gray_concrete replace red_concrete
				}
				tag @s add temp
				execute if block ~ ~-1 ~ gray_concrete run kill @s
				execute if block ~ ~-1 ~ red_stained_glass run tp @s ~-4 ~ ~
				execute if block ~ ~-1 ~ green_stained_glass run tp @s ~4 ~ ~
				execute if block ~ ~-1 ~ blue_stained_glass run tp @s ~ ~ ~-4
				execute if block ~ ~-1 ~ black_stained_glass run tp @s ~ ~ ~4
				setblock ~ ~-1 ~ gray_concrete
			}
			execute as @e[tag=potential,sort=random,limit=1] at @s run{
				summon marker ~ ~ ~ {Tags:['maze.target']}
				execute if entity @s[tag=a] run fill ~-4 ~ ~-1 ~1 ~ ~1 air
				execute if entity @s[tag=a] run fill ~-4 ~-1 ~ ~ ~-1 ~ gray_concrete replace red_concrete
				execute if entity @s[tag=a] run setblock ~ ~-1 ~ red_stained_glass
				execute if entity @s[tag=b] run fill ~-1 ~ ~-1 ~4 ~ ~1 air
				execute if entity @s[tag=b] run fill ~ ~-1 ~ ~4 ~-1 ~ gray_concrete replace red_concrete
				execute if entity @s[tag=b] run setblock ~ ~-1 ~ green_stained_glass
				execute if entity @s[tag=c] run fill ~-1 ~ ~-4 ~1 ~ ~1 air
				execute if entity @s[tag=c] run fill ~ ~-1 ~-4 ~ ~-1 ~ gray_concrete replace red_concrete
				execute if entity @s[tag=c] run setblock ~ ~-1 ~ blue_stained_glass
				execute if entity @s[tag=d] run fill ~-1 ~ ~-1 ~1 ~ ~4 air
				execute if entity @s[tag=d] run fill ~ ~-1 ~ ~ ~-1 ~4 gray_concrete replace red_concrete
				execute if entity @s[tag=d] run setblock ~ ~-1 ~ black_stained_glass
				tp @e[tag=maze.gen] @s
				tag @e[tag=maze.gen] remove temp
			}
			kill @e[tag=potential]
		}
	}
}