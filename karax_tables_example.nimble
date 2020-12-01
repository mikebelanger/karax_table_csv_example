# Package
version = "1.0.0"
author = "Mike Belanger"
description = "Example usage of loading CSV and viewing data in frontend."
license = "MIT"

srcDir = "src"

# Dependencies

requires "nim 1.4.0"
requires "csvtools 0.1.4"
requires "jester 0.5.0"
requires "karax 1.1.3"

# tasks
task frontend, "compiles frontend code":
    exec "nim js frontend.nim"
    mkDir "public/js"
    cpFile "frontend.js", "public/js/frontend.js"
    rmFile "frontend.js"