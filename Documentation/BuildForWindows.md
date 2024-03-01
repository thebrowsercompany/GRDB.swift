Build for Windows
===============

## Pre-build actions

You need to get sqlite3 from vcpkg. Also, SPM uses pkg-config, so you get a compatibility tool.

```
$ vcpkg integrate install
$ vcpkg install sqlite3[snapshot,fts5]
$ winget install -e --id bloodrock.pkg-config-lite
```

### Set the path to find sqlite3.h.

Adding Environment Variables
```
set PKG_CONFIG_PATH=C:\<path_to>\vcpkg\installed\x64-windows\lib\pkgconfig
```

OR

Set from the environment variable editor on the GUI

 OR

Add to swift build command
 ```
 swift build --pkg-config-path=C:\<path-to>\vcpkg\installed\x64-windows\lib\pkgconfig
 ```

### Set the path to find sqlite3.dll.

There are two ways to use sqlite3.dll. Either one is acceptable.

 1. copy sqlite3.dll directly next to the generated executable binary.
 2. add `C:\<path_to>\vcpkg\installed\x64-windows\bin` to the PATH to add a search path that can be executed

 When distributing the application, it is recommended to copy and distribute sqlite3.dll from vcpkg.
