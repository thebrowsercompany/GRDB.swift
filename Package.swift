// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GRDB",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_15),
    ],
    products: [
        .library(name: "GRDB", targets: ["GRDB", "_GRDBDummy"]),
    ],
    targets: [
        .binaryTarget(
            name: "GRDB",
            url: "https://github.com/DuckDuckGo/GRDB.swift/releases/download/3.0.1/GRDB.xcframework.zip",
            checksum: "72409f15c136c2147ea61722f3e97d7fd83babcaee6090ea138bcd131db0e5ba"
        ),
        .target(name: "_GRDBDummy")
    ]
)
