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
            url: "https://github.com/thebrowsercompany/GRDB_2.swift/releases/download/3.0.1/GRDB.xcframework.zip",
            checksum: "197ab8b8529da0ad28c91e5010223cc846367b18e5a575cb4425df2f7df83bd5"
        ),
        .target(name: "_GRDBDummy")
    ]
)
