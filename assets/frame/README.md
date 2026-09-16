# frame

## usage
```gradle
repositories {
  maven {
    name = "Modding Playground"
    url  = "https://raw.githubusercontent.com/moddingplayground/maven/main/"
  }

  // if using frame-config
  maven {
    name = "Shedaniel"
    url  = "https://maven.shedaniel.me/"
  }
}

dependencies {
  modImplementation "net.moddingplayground.frame:frame-fabric:${FRAME VERSION}"
}
```

## license
This project's code is licensed under [MIT](LICENSE), and assets are licensed under [ARR](LICENSE_ASSETS). If you would like clarification or explicit permission, contact us on [Discord](https://discord.moddingplayground.net).
