# DungeonZ
DungeonZ is a mod which adds the basement for creating explorable dungeons.

### Installation
DungeonZ is a mod built for the [Fabric Loader](https://fabricmc.net/). It requires [Fabric API](https://www.curseforge.com/minecraft/mc-mods/fabric-api) and [Cloth Config API](https://www.curseforge.com/minecraft/mc-mods/cloth-config) to be installed separately; all other dependencies are installed with the mod.

### License
DungeonZ is licensed under MIT.

### Datapacks
If you don't know how to create a datapack check out [Data Pack Wiki](https://minecraft.fandom.com/wiki/Data_Pack) website and try to create your first one for the vanilla game.
If you know how to create one, the folder path has to be ```data\dungeonz\dungeon\YOURFILE.json```

```json
{
    "dungeon_type": "dark_dungeon", // unique dungeon id, create a lang file in a resource pack "dungeon.unique_id" to have proper translation
    "difficulty": { // set difficulties here, can be any name but have to get translated with a resource pack if you don't use "easy","normal","hard" or "extreme"
        "easy": {
            "mob_modificator": 1.0, // modificator to increase mob strength
            "loot_table_ids": [ // a list of different loot tables chests and barrels will get filled with
                "dungeonz:chests/dark_dungeon_low_tier_chest_loot",
                "dungeonz:chests/dark_dungeon_mid_tier_chest_loot"
            ],
            "boss_modificator": 1.0,
            "boss_loot_table_id": "dungeonz:chests/dark_dungeon_easy_boss_loot"
        },
        "normal": {
            "mob_modificator": 1.5,
            "loot_table_ids": [
                "dungeonz:chests/dark_dungeon_low_tier_chest_loot",
                "dungeonz:chests/dark_dungeon_mid_tier_chest_loot",
                "dungeonz:chests/dark_dungeon_high_tier_chest_loot"
            ],
            "boss_modificator": 2.0,
            "boss_loot_table_id": "dungeonz:chests/dark_dungeon_normal_boss_loot"
        }
    },
    "blocks": {
        "minecraft:gold_block": {
            "spawns": [ // a list of entity types which can spawn at the block positions
                "minecraft:skeleton"
            ],
            "chance": { // an object for each difficulty which includes spawn chances at the block positions
                "easy": 0.4,
                "normal": 0.7
            },
            "replace": "minecraft:air"
        },
        "minecraft:iron_block": {
            "spawns": [
                "minecraft:zombie"
            ],
            "chance": {
                "easy": 0.4,
                "normal": 0.7
            },
            "replace": "minecraft:air"
        },
        "minecraft:netherite_block": {
            "boss_entity": "minecraft:warden", // required for one block id! At this block position the boss will spawn
            "data": "", // optional add nbt info to the boss entity
            "replace": "minecraft:air"
        },
        "minecraft:emerald_block": {
            "boss_loot_block": true, // required for one block id! This block will get replaced by a chest filled with the boss loot after completion
            "replace": "minecraft:air"
        },
        "minecraft:quartz_block": {
            "exit_block": true, // required for one block id! Those blocks will get replaced by the dungeon portal to get out from the dungeon after completion
            "replace": "minecraft:stone_bricks"
        }
    },
    "spawner": { // use Dungeon Spawner in your structure build to set the max spawn time for the spawner here before the spawner will automatically break
        "minecraft:zombie": 10,
        "minecraft:skeleton": 5
    },
    "breakable": [], // block ids which can be broken in the dungeon by the player
    "placeable": [ // block ids which can be placed in the dungeon by the player
        "minecraft:torch"
    ],
    "required": { // Since v1.2.0 items which get consumed after joining the dungeon per difficulty
      "easy": {
        "minecraft:diamond": 1
      },
      "normal": {
        "minecraft:diamond": 2
      },
      "hard": {
        "minecraft:diamond": 4
      }
    },
    "respawn": false,
    "elytra": false,
    "keep_inventory": false,
    "max_group_size": 5,
    "min_group_size": 0, // Optional
    "required_level": 0, // Optional LevelZ compat
    "cooldown": 108000, // Cooldown after the dungeon is completed or failed in ticks
    "background_texture": "", // Optional for custom dungeon portal backgrounds, set your texture path here
    "dungeon_structure_pool_id": "dungeonz:dark_dungeon/dungeon_spawn" // Structure part which the dungeon generates start of
}
```

Make sure your first structure piece (`"dungeon_structure_pool_id"`) has a jigsaw block named `dungeonz:spawn`. This is the block where the player will teleport to.

An example part for the overworld structure which leads to the dungeon:

```json
{
    "type": "dungeonz:dimension_structures",
    "start_pool": "dungeonz:overworld_test_start",
    "size": 1,
    "max_distance_from_center": 80,
    "biomes": "#minecraft:is_overworld",
    "step": "surface_structures",
    "start_height": {
        "absolute": 0
    },
    "project_start_to_heightmap": "WORLD_SURFACE_WG",
    "spawn_overrides": {},
    "dungeon_type": "dark_dungeon" // set your unique dungeon id here
}
```

DungeonZ has an extra field called `"dungeon_type"` which has to be one of the defined dungeon types.

### Advancement
DungeonZ provides a advancement criterion trigger called `dungeonz:dungeon_completion`.

```json
    "criteria": {
        "completion_example": {
            "trigger": "dungeonz:dungeon_completion",
            "conditions": {
                "dungeon_type": "dark_dungeon",
                "difficulty": "easy"
            }
        }
    }
```

### Commands
`/dungeon leave`
- Leave the current dungeon (if unable to finish the dungeon)
