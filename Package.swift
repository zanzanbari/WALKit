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
        .package(name: "SnapKit", url: "https://github.com/SnapKit/SnapKit", from: "5.6.0"),
        .package(name: "Lottie", url: "https://github.com/airbnb/lottie-ios.git", from: "4.1.2")
    ],
    targets: [
        .target(
            name: "WALKit",
            dependencies: [
                .product(name: "SnapKit", package: "SnapKit", condition: .when(platforms: [.iOS])),
                .product(name: "Lottie", package: "Lottie", condition: .when(platforms: [.iOS]))
            ],
            path: "Sources/WALKit",
            resources: [
                .process("Font/Fonts"),
                .process("Icon/Icon.xcassets"),
            ]
        ),
        .testTarget(
            name: "WALKitTests",
            dependencies: ["WALKit"]),
    ]
)
