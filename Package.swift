// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwipeCellKit",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "SwipeCellKit",
            targets: ["SwipeCellKit"])
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SwipeCellKit",
            dependencies: [],
            path: "Source"
        )
    ]
)
