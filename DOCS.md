## `function astar:queue_path`

Creates a new pathfinding task and adds it to the pathfinding queue.

This function MUST be run as an entity (The path owner). The UUID of the path owner is stored, and can later be used to select the path owner once a path is found.

### Arguments

- `from`: An object representing the starting block position of the path. `{ x: int, y: int, z: int }`
- `to`: An object representing the ending block position of the path. `{ x: int, y: int, z: int }`
- `on_path_found`: The function to call as & at the path owner entity when a path is found.
- `max_ms` (optional): The maximum amount of time in milliseconds that the pathfinding algorithm should run before giving up. Defaults to 1000 ms.

## Receiving pathfinding results:

When the `on_path_found` callback function is called, the following data will be stored in `storage astar:temp path`:

- `nodes`: An array of block positions representing the path from the starting position to the ending position. Each block position is an object with x, y, and z properties. For example: `[{ x: int, y: int, z: int }, ...]`

- `incomplete`: A boolean indicating whether the pathfinding was incomplete. (The algorithm was not able to find a path within the `max_ms` time limit or explored all available nodes without finding the target position.)

- `path_owner`: The UUID of the entity that owns the path.

- `path_id`: The ID of the path.

- `max_ms`: The maximum amount of time in milliseconds that the pathfinding algorithm should run before giving up.

- `from`: The starting block position of the path. `{ x: int, y: int, z: int }`

- `to`: The ending block position of the path. `{ x: int, y: int, z: int }`

## `function astar:queue_priority_path`

Works the same as `astar:queue_path`, but adds the pathfinding task to the front of the queue instead of the back, making it get processed as soon as possible.

## Example Usage

`example.mcb`

```
function queue_path {
	# When called as an entity, this function queues a pathfinding task from the entity's current position to the position of the nearest entity with the `end_pos` tag, with `example:on_path_found` as the callback function when a path is found, and a maximum time limit of 5000 ms for the pathfinding algorithm

	data modify storage astar:input path set value { \
		on_path_found: 'example:on_path_found' \
		max_ms: 5000, \
	}

	data modify storage astar:input path.from.x set from entity @s Pos[0]
	data modify storage astar:input path.from.y set from entity @s Pos[1]
	data modify storage astar:input path.from.z set from entity @s Pos[2]

	execute as @n[tag=end_pos] run {
		data modify storage astar:input path.to.x set from entity @s Pos[0]
		data modify storage astar:input path.to.y set from entity @s Pos[1]
		data modify storage astar:input path.to.z set from entity @s Pos[2]
	}

	function astar:queue_path
}

function on_path_found {
	# Do something when a path is found, for example, if the path owner is a Marker, we could store the path nodes in it's `data` NBT:
	data modify entity @s data.path set from storage astar:temp path.nodes

	# Check logic if the path returned is incomplete:
	execute if data storage astar:temp {path:{incomplete: true}} run {
		say Incomplete path!
	}
}

```
