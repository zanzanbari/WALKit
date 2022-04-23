// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WALKit",
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
                .process("Resource/Fonts")
            ]
        ),
        .testTarget(
            name: "WALKitTests",
            dependencies: ["WALKit"]),
    ]
)
