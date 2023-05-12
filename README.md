# A* Pathfinding Data Pack Development World

## About this data pack.

A* is async, and highly configurable:
Configurable aspects include:
- block weights
- diagonal, straight, and vertical movement cost
- The maximum MSPT A* will consume during a tick (You can see me adjusting this on the fly in the top-down video)
- Maximum number of nodes closed
- Whether or not the pathfinding is 3D or 2D
- What blocks can be pathed on
- What blocks can be pathed though
- What blocks can be walked up as stairs (for 3D pathfinding)

Paths are requested and put in a queue using a function.

When a path is solved the path info including nodes and ID is returned in a storage key, and a callback function tag is called as the entity that requested the path.

If your path request allows for intermediate pathfinding, if any end condition is met that isn't finding the end node, A* will return a path to the best position it found.
End conditions include:
- Finding the end node
- No more open areas are left (Path unsolvable)
- Maximum closed nodes reached
- Path is cancelled using the cancellation function

In this example red concrete is 2x more annoying to path over for A*, so if avoids it if it can. This gives us the nice effect of the NPCs mostly sticking to the center of the maze's walkways

All of the marker entities you see (which are being made visible by a mod called Visible Barriers) that aren't part of the solving process are either the last calculated path - which is a debug toggle - or the target entities I'm using to randomly select a destination for each NPC

The NPC AI runs on a simple state machine with only a few states:
- IDLE
- WAITING_FOR_PATH
- FOLLOWING_PATH
- STARTING_WALK_CYCLE
- ENDING_WALK_CYCLE
- WAITING_FOR_ANIM

## How to use this data pack library.
You can either extract the MCB data pack directly from the `datapacks` folder. Or you can build the data pack using the instructions below.

## Building the data pack.
You'll need to have `node`, `yarn`, and `mc-build` installed.

Make sure you configure `datapacks/Astar/config.js` to your needs before running the package script.

Run `yarn install`, then `yarn package` to build the data pack.

The packaged data pack will be put exported as `dist/datapacks/Astar.zip`
