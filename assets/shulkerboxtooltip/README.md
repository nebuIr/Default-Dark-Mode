Shulker Box Tooltip  
[![Maven](https://img.shields.io/maven-metadata/v/https/maven.misterpemodder.com/libs-release/com/misterpemodder/shulkerboxtooltip-fabric/maven-metadata.xml.svg)](https://maven.misterpemodder.com/libs-release/com/misterpemodder/shulkerboxtooltip-fabric)
[![CursreForge](http://cf.way2muchnoise.eu/full_315811_downloads.svg)](https://minecraft.curseforge.com/projects/shulkerboxtooltip)
[![Modrinth](https://img.shields.io/modrinth/dt/2M01OLQq?color=1bd96a&label=modrinth%20downloads)](https://modrinth.com/mod/shulkerboxtooltip)
[![CI](https://github.com/MisterPeModder/ShulkerBoxTooltip/workflows/Main/badge.svg)](https://github.com/MisterPeModder/ShulkerBoxTooltip/actions?query=workflow%3AMain)
[![Crowdin](https://badges.crowdin.net/shulkerboxtooltip/localized.svg)](https://crowdin.com/project/shulkerboxtooltip)
=========================

This mod allows you to see a preview window of a shulker box contents when hovering above it in an inventory by pressing shift.

**[Help translate ShulkerBoxTooltip on Crowdin!](https://crowdin.com/project/shulkerboxtooltip)**  
[Please vote for this to be included in vanilla!](https://feedback.minecraft.net/hc/en-us/community/posts/360074507051-shulker-boxes-should-have-the-new-bundle-interface)

<img src="https://i.imgur.com/4JAmlAz.png" alt="Preview Window" width="500" />

## Developers

### List of artifacts
- **com.misterpemodder:shulkerboxtooltip-common**: Platform-agnostic API
- **com.misterpemodder:shulkerboxtooltip-fabric**: Fabric Implementation
- **com.misterpemodder:shulkerboxtooltip-forge**: Forge-specific API + Implementation

### Declaring the dependency (Fabric Loom/Architectury Loom)
```gradle
repositories {
    maven { url "https://maven.misterpemodder.com/libs-release/" }
}

dependencies {
    // Change to 'shulkerboxtooltip-forge' or 'shulkerboxtooltip-common' depending on the artifact
    modImplementation("com.misterpemodder:shulkerboxtooltip-fabric:VERSION") { transitive false }
}
```

### API
To use the API, implement the `ShulkerBoxTooltipApi` interface on a class and register it as a plugin.

On Fabric, add your plugin class as an entry point of type `"shulkerboxtooltip"` in your `fabric.mod.json` as such:
```json
"entrypoints": {
    "shulkerboxtooltip": [
      "com.example.mymod.MyShulkerBoxTooltipPlugin"
    ]
}
```

On Forge, register your plugin by adding an extension point in your mod's initialization code:
```java
ModLoadingContext.get().registerExtensionPoint(ShulkerBoxTooltipPlugin.class,
    () -> new ShulkerBoxTooltipPlugin(MyModShulkerBoxTooltipPlugin::new));
```

See [api source](https://github.com/MisterPeModder/ShulkerBoxTooltip/blob/1.19/common/src/main/java/com/misterpemodder/shulkerboxtooltip/api/ShulkerBoxTooltipApi.java) for documentation.
