# Charm for Minecraft 1.18.2

## Version 4.x
Charm is a vanilla-plus mod for Minecraft, inspired by the Quark mod.

It requires Fabric API, Minecraft 1.18.2 and Java 17.

If you would like to participate in testing pre-release versions of Charm, please get in touch on [Discord](https://discord.gg/S649dvZ9Ma) (working invite link as of august 2022!)

### Why has my issue been closed?
Sadly, we don't have the time to support versions earlier than **1.18.2**.  There's barely any time for supporting the latest version!

If we thought your issue related to an earlier version then we closed it to try and decrease the amount of issue noise.

We welcome any developer support to maintain older versions. Contact us on [Discord](https://discord.gg/S649dvZ9Ma).

Please note that creating any new issues about earlier versions will also be closed.

### Unchanged features
* `Aerial affinity enchantment`
* `Auto restock`
* `Azalea wood`
* `Beacons heal mobs`
* `Block of ender pearls`
* `Block of gunpowder`
* `Block of sugar`
* `Cave spiders drop cobwebs`
* `Chickens drop feathers`
* `Clear item frames`
* `Collection enchantment`
* `Colored bundles`
* `Coral sea lanterns`
* `Coral squids`
* `Editable signs`
* `Endermite powder`
* `Extra boats`
* `Gentle potion particles`
* `Inventory tidying`
* `Kilns`
* `Lava bucket destroys items`
* `Mineshaft improvements`
* `Mooblooms`
* `More portal frames`
* `No potion glint`
* `No spyglass scope`
* `Parrots stay on shoulder`
* `Path to dirt`
* `Player pressure plates`
* `Portable crafting`
* `Redstone lanterns`
* `Redstone sand`
* `Stackable enchanted books`
* `Stackable potions`
* `Variant barrels`
* `Variant bookshelves`
* `Variant ladders`
* `Variant mob textures`
* `Villagers follow emerald blocks`
* `Witches drop luck`
* `Woodcutters`


### Added/changed features
* `Anvil improvements` has been split into the following features:
  * `Allow too expensive`
  * `Show repair cost`
  * `Stronger anvils`
* `Amethyst note block` has been added.
* `Atlases`:
  * A keybind has been added to quickly toggle between mainhand and atlas.
* `Bat buckets` now give the player the *echolocation* effect.
  * The echolocation effect can be applied to the player via commands to cause all nearby entities to receive the glowing effect.
* `Beekeepers`:
  * No longer have a dedicated village house.
  * The village house has been moved to the *Strange* mod.
* `Bumblezone` is now known as `Bumblezone integration`.
* `Bundle sorting` has been changed to `Hover sorting` and is also responsible for sorting shulker boxes.
* `Chairs` has been added.
* `Compass overlay` has been added.
* `Extra trades` has been added.
* `Extract enchantments`:
  * Extraction and treasure enchantments are more expensive (configurable).
* `Feather falling crops` is now known as `No crop trampling`.
  * Feather falling boots is now a configurable option.
* `Goats drop mutton` has been added.
* `Grindable armor` has been added.
  * It allows grinding of both horse armor and undamaged player armor.
* `Hoe harvesting` is now known as `Quick replant`.
  * It is now possible to add custom crop blockstates to the config.
* `Husk improvements` has been split into the following features:
  * `Husks drop sand`
  * `Husks spawn underground`
* `Improved fortress loot` has been added.
* `Improved mansion loot` has been added.
* `Lower noteblock pitch` has been added.
* `Lumberjacks`:
  * No longer have a dedicated village house.
  * The village house has been moved to the *Strange* mod.
* `Map tooltips` is now known as `Map tooltip`.
  * Now uses decoration blocks from dedicated loot table files.
* `Music improvements` is now known as `Discs stop background music`.
  * The creative music tracks have moved to the *Charmonium* mod.
* `No cured villager discount` has been added and is **disabled by default**.
* `No treasure enchantment trading` has been added and is **disabled by default**.
* `Open double doors` is now known as `Open both doors`.
* `Raid horns`:
  * New sound for when calling off a raid.
  * Sounds added for if a raid horn fails to activate.
* `Remove nitwits` is now known as `No nitwits` and is **disabled by default**.
* `Repair elytra from leather` has been added.
  * By default only functional when insomnia is disabled.
* `Repair netherite from scrap` has been added.
* `Repair tridents from shards` has been added.
* `Respawn anchor in the End` has been added and is **disabled by default**.
* `Shulker box drag drop` has been added.
* `Shulker box tooltips` is now known as `Shulker box tooltip`.
  * The tooltip uses the vanilla bundle tooltip hover gui.
* `Snow storms` has been reworked and is now known as `Snow accumulation`.
  * The freezing penalty has been removed.
  * The heavier snow texture has been removed.
* `Stackable stews` now defaults to a stacksize of 16.
* `Stray improvements` has been split into the following features:
  * `Strays drop blue ice`
  * `Strays spawn underground`
* `Tamed animals no damage` is now known as `No pet damage`.
* `Totem of preserving` has been reworked:
  * Peaceful and Easy mode always drop a totem on death.
  * Normal and Hard mode require you to have a totem in your inventory.
  * Totems can be dropped by witches or found in outposts/mansions.
* `Use totem from inventory` is now known as `Totem works from inventory`.
  * It now affects the totem of preserving as well as the totem of undying.
* `Variant bars` textures now match the gold, copper and netherite blocks palette more closely.
* `Variant chains` now only applies to gold.
* `Variant lanterns` now only applies to gold.
* `Wandering trader maps` now supports tagged structures.


### Removed/moved features
* `Armor invisibility` has been removed.
* `Biome dungeons` has been removed.
* `Bookcases` has been removed.
* `Casks` has moved to the *Strange* mod.
* `Campfires no damage` has been removed.
* `Colored glints` has moved to the *Strange* mod.
* `Cooking pots` has moved to the *Strange* mod.
* `Copper rails` has been removed.
* `Decrease repair cost` has been removed.
* `Ebony wood` has moved to the *Strange* mod.
* `Ender bundles` has moved to the *Strange* mod.
* `Entity spawners` has moved to the *Strange* mod.
* `Extra nuggets` has been removed.
* `Glowballs` has moved to the *Strange* mod.
* `More village biomes` has been removed (for now).
* `Piglins follow gold blocks` has been removed.
* `Potion of Hogsbane` has moved to the *Strange* mod.
* `Potion of Piercing Vision` has moved to the *Strange* mod.
* `Potion of Spelunking` has moved to the *Strange* mod.
* `Quadrants` has moved to the *Strange* mod.
* `Storage crates` has been removed.
* `Storage labels` has been removed.


### Mixins and accessors
* All accessor mixins have been removed.  Accesswideners are now used instead.
* If a feature is disabled in the config, all of its associated mixins will **not be added**.  This is intended to improve compatibility with other mods that might patch the same code.
* Mixins use `inject`s as often as possible to avoid conflicts.
* To blacklist any mixin, create a file in the config called `charm-mixin-blacklist.txt` and add each mixin to disable on its own line in the following format: `module_name.MixinClassName`
  * example: `no_treasure_enchantment_trading.CheckIfTradeableMixin`
* The `helper.LoadCustomModelPartsMixin` cannot be blacklisted as Charm requires it to render custom models and will otherwise cause a client-side crash.
* `helper`, `core` and `event` mixins can be blacklisted but this is not recommended as doing so will cause inconsistent behavior in Charm.


### Support
**Charm 4.x for Minecraft 1.18 is now the main version of Charm.**

Charm for Minecraft 1.17 (and older versions) will no longer receive official support.

A Forge port of the latest version of Charm may be considered.
