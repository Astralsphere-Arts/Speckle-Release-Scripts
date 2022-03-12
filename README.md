# Speckle Release Scripts

Scripts and Files used for Creating new Releases for [Speckle](https://github.com/Astralsphere-Arts/Speckle).

## Build Instructions

1. Run `init.bat`.
2. Copy `Speckle.jar` and `lib` folder from the `dist` folder in [Speckle](https://github.com/Astralsphere-Arts/Speckle) Project into `app` folder.
3. Copy [JRE](https://adoptium.net/releases.html) files into `runtime` folder inside `app` folder.
4. To create the Windows exectueabe open `speckle-launcher-config.xml` in **launch4j** and click on Build.
5. To create the Speckle setup for Windows open `speckle-setup-script.iss` in **Inno Setup** and click on Compile.
