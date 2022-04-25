// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WALKit",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "WALKit",
            targets: ["WALKit"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "WALKit",
            dependencies: [],
            resources: [
                .process("Resource/Fonts"),
                .process("*.xcassets"),
            ]
        ),
        .testTarget(
            name: "WALKitTests",
            dependencies: ["WALKit"]),
    ]
)
