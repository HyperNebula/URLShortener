# Package

version       = "0.1.0"
author        = "HyperNebula"
description   = "A URL Shortener"
license       = "AGPL-3.0-or-later"
srcDir        = "src"
bin           = @["URLShortener"]


# Dependencies

requires "nim >= 2.2.10"
requires "mummy >= 0.4.8"
requires "tiny_sqlite >= 0.2.0"
requires "JSONy >= 1.1.6"


# Tasks

task buildrel, "Build with proper flags for release":
    exec "nim c -d:release --threads:on --mm:orc -r src/URLShortener.nim"
