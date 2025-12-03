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
            url: "https://github.com/thebrowsercompany/GRDB.swift/releases/download/3.0.1/GRDB.xcframework.zip",
            checksum: "c2895d4d40443f5009b90142950317841232a35ba448cd5fdbc31e9340599422"
        ),
        .target(name: "_GRDBDummy")
    ]
)
