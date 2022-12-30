# Polymorph
[![](http://cf.way2muchnoise.eu/versions/polymorph.svg)](https://www.curseforge.com/minecraft/mc-mods/polymorph)
[![](http://cf.way2muchnoise.eu/short_polymorph_downloads.svg)](https://www.curseforge.com/minecraft/mc-mods/polymorph/files)
[![License: LGPL v3](https://img.shields.io/badge/License-LGPL%20v3-blue.svg?&style=flat-square)](https://www.gnu.org/licenses/lgpl-3.0)
[![ko-fi](https://img.shields.io/badge/Support%20Me-Ko--fi-%23FF5E5B?style=flat-square)](https://ko-fi.com/C0C1NL4O)

Polymorph is a mod that solves recipe conflicts by letting players choose between all potential
outputs shared by the same ingredients.

With a sufficiently large amount of mods, recipe conflicts are a common occurrence and the
responsibility for resolving these usually falls on the user or modpack developer, using datapacks
or other tools to ensure that each recipe is unique.

Polymorph offers an alternative solution, allowing all possible crafting and smelting recipes to
co-exist regardless of conflicts.

![](https://i.postimg.cc/prDcRzJ8/logo-final.png)

## Features

### Crafting

![](https://i.ibb.co/TkWswkG/polymorph.gif)

When a group of ingredients matches more than one recipe, a button will appear above the output
slot. Pushing this button will show a list of all possible results and selecting one will change the
crafting output to match. Polymorph will also remember the last selection as long as the ingredients
don't change, so repeated crafting actions are possible on the same selection.

### Smelting

![](https://i.ibb.co/QX9MNYM/polymorph-furnacedemo.gif)

When a valid input matches more than one output, a button will appear above the output slot. Pushing
this button will show a list of all possible results with the currently selected result highlighted
in green. Selecting one of the listed results will change the smelting output to match. This
selection will be saved to the block itself and persist across world loading and unloading.

### Commands

To assist identifying potential conflicts, there's a command `/polymorph conflicts` that will try to
identify recipes that conflict with each other and outputs a list of them to your logs folder.

## Downloads

**CurseForge**
- [Polymorph for Forge](https://www.curseforge.com/minecraft/mc-mods/polymorph/files)
- [Polymorph for Fabric](https://www.curseforge.com/minecraft/mc-mods/polymorph-fabric/files)

## Support

Please report all bugs, issues, and feature requests to the
[issue tracker](https://github.com/illusivesoulworks/polymorph/issues).

For non-technical support and questions, join the developer's [Discord](https://discord.gg/JWgrdwt).

## License

All source code and assets are licensed under LGPL 3.0.

## Donations

Donations to the developer can be sent through [Ko-fi](https://ko-fi.com/C0C1NL4O).
