<h1 align="center">
  <img src="https://cdn.modrinth.com/data/jtmvUHXj/14fabf4859e845b0bd6659daf2375be3e88f59ec.png" width=230>
  <br>
  αccessories
  <br>
  <a href="https://modrinth.com/mod/accessories/">
      <img src="https://img.shields.io/badge/-modrinth-gray?style=for-the-badge&labelColor=green&labelWidth=15&logo=appveyor&logoColor=white">
  </a>
  <a href="https://www.curseforge.com/minecraft/mc-mods/accessories">
      <img src="https://img.shields.io/badge/-curseforge-gray?style=for-the-badge&labelColor=orange&labelWidth=15&logo=appveyor&logoColor=white">
  </a>
  <br>
  <a href="https://maven.wispforest.io/#/releases/io/wispforest/accessories-fabric">
    <img alt="Maven metadata URL" src="https://img.shields.io/maven-metadata/v?metadataUrl=https%3A%2F%2Fmaven.wispforest.io%2Freleases%2Fio%2Fwispforest%2Faccessories-fabric%2Fmaven-metadata.xml&style=for-the-badge">
  </a>
  <a href="https://discord.gg/xrwHKktV2d">
      <img src="https://img.shields.io/discord/825828008644313089?label=wisp%20forest&logo=discord&logoColor=white&style=for-the-badge">
  </a>
  <a href="https://docs.wispforest.io/accessories/home/">
    <img src="https://img.shields.io/badge/Documentation-Link-SECRET_MESSAGE?link=https%3A%2F%2Fdocs.wispforest.io%2Faccessories%2Fhome%2F&logo=discord&logoColor=white&style=for-the-badge">
  </a>
</h1>

## Overview
Accessories is a Data-Driven Accessory mod for NeoForge and Fabric with emphasis on using a Common API for both platforms when possible

<p/>
  
This API is based on the works of [Curios](https://github.com/TheIllusiveC4/Curios) and [Trinkets](https://github.com/emilyploszaj/trinkets) with credit going to both [TheIllusiveC4](https://github.com/TheIllusiveC4) and [emilyploszaj](https://github.com/emilyploszaj) for their work on Accessory mods for Minecraft.

<p align="center">
  <img width=600 src="https://cdn.modrinth.com/data/jtmvUHXj/images/e40c711b48f2962a31f808c34792ba4f71978ca3.png"/>
</p>

## Build Setup

Below is an example of various dependencies setups for platforms with the given repositories are all required for all accessories dependencies.

### Groovy
```groovy
repositories {
    maven { url 'https://maven.wispforest.io/releases' }
    maven { url 'https://maven.su5ed.dev/releases' }
    maven { url 'https://maven.fabricmc.net' }
    maven { url 'https://maven.shedaniel.me/' }
}

// Fabric
dependencies {
    modImplementation("io.wispforest:accessories-fabric:${project.accessories_version}")
}
//...

// Arch Common
dependencies {
    modImplementation("io.wispforest:accessories-common:${project.accessories_version}")
}
//...

// Arch NeoForge
dependencies {
    modImplementation("io.wispforest:accessories-neoforge:${project.accessories_version}")

    // Required due to issues with JIJ dependency resolving in arch or something
    forgeRuntimeLibrary("io.wispforest:endec:0.1.8")
    forgeRuntimeLibrary("io.wispforest.endec:gson:0.1.5")
    forgeRuntimeLibrary("io.wispforest.endec:netty:0.1.4")
}
//...

// NeoForge
dependencies {
    implementation("io.wispforest:accessories-neoforge:${project.accessories_version}")
}
//...

// Vanilla Gradle Common
dependencies {
    // Yarn Intermediary 
    compileOnly("io.wispforest:accessories-common:${project.accessories_version}")
    
    // Mojang Mappings
    compileOnly("io.wispforest:accessories-common:${project.accessories_version}-mojmap")
}
```
<details>
<summary><h3>Kotlin DSL</h3></summary>
  
```kotlin
repositories {
    maven("https://maven.wispforest.io/releases")
    maven("https://maven.su5ed.dev/releases")
    maven("https://maven.fabricmc.net")
    maven("https://maven.shedaniel.me/")
}

// Fabric
dependencies {
    modImplementation("io.wispforest:accessories-fabric:${properties["accessories_version"]}")
}
//...

// Arch Common
dependencies {
    modImplementation("io.wispforest:accessories-common:${properties["accessories_version"]}")
}
//...

// Arch NeoForge
dependencies {
    modImplementation("io.wispforest:accessories-neoforge:${properties["accessories_version"]}")

    // Required due to issues with JIJ dependency resolving in arch or something
    forgeRuntimeLibrary("io.wispforest:endec:0.1.8")
    forgeRuntimeLibrary("io.wispforest.endec:gson:0.1.5")
    forgeRuntimeLibrary("io.wispforest.endec:netty:0.1.4")
}
//...

// NeoForge
dependencies {
    implementation("io.wispforest:accessories-neoforge:${properties["accessories_version"]}")
}
//...

// Vanilla Gradle Common
dependencies {
    // Yarn Intermediary 
    compileOnly("io.wispforest:accessories-common:${properties["accessories_version"]}")

    // Mojang Mappings
    compileOnly("io.wispforest:accessories-common:${properties["accessories_version"]}-mojmap")
}
```
</details>

## Features
- Compatibility Layers with existing Accessory Mods like [Curios](https://github.com/TheIllusiveC4/Curios) and [Trinkets](https://github.com/emilyploszaj/trinkets)
- Full Support for NBT-based Accessories (More Info on Wiki {TODO: ADD LINK TO WIKI})
- Existing API Events for Piglin Neutral Items, Enderman Masks, Looting Adjustments, Fortune Adjustments, and Snow Walking Ability.
- Unique Slot API for Mod Specific Accessories (More Info on Wiki {TODO: ADD LINK TO WIKI})
