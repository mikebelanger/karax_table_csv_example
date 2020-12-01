# Package
version = "1.0.0"
author = "Mike Belanger"
description = "Example usage of loading CSV and viewing data in frontend."
license = "MIT"

srcDir = "src"

# Dependencies

requires "nim 1.2.6"
requires "karax 1.3.6"

# tasks
task frontend, "compiles frontend code":
    exec "nim js frontend.nim"
    mkDir "public/js"
    cpFile "frontend.js", "public/js/frontend.js"
    rmFile "frontend.js"