Use for Windows
===============

### Pre-build actions

You need to get sqlite3 from vcpkg. Also, SPM uses pkg-config, so you get a compatibility tool.

```
$ vcpkg integrate install
$ vcpkg install sqlite3[snapshot,fts5]
$ winget install -e --id bloodrock.pkg-config-lite
```

Set the path to find sqlite3.h.

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

### Post-build actions

First, make sure sqlite3.dll is located at `C:\<path-to>\vcpkg\installed\x64-windows\bin\sqlite3.dll`

Copy sqlite3.dll to the same location as the <myapp>.exe you built.

The directory structure is as follows.

```
- debug
  - myapp.exe
  - myapp.lib
  - sqlite3.dll
```
