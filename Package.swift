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
        .package(name: "SnapKit", url: "https://github.com/SnapKit/SnapKit", from: "5.6.0")
    ],
    targets: [
        .target(
            name: "WALKit",
            dependencies: [
                .product(name: "SnapKit", package: "SnapKit", condition: .when(platforms: [.iOS]))
            ],
            path: "Sources/WALkit",
            resources: [
                .process("Font/Fonts"),
                .process("Sources/WALKit/Icon/WALIcon.xcassets"),
            ]
        ),
        .testTarget(
            name: "WALKitTests",
            dependencies: ["WALKit"]),
    ]
)
