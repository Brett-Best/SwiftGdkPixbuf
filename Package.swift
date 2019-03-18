// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "GdkPixbuf",
    products: [
        .library(name: "GdkPixbuf", targets: ["GdkPixbuf"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Brett-Best/CGdkPixbuf.git", .branch("bb-pkg-dev")),
        .package(url: "https://github.com/Brett-Best/SwiftGIO.git", .branch("bb-pkg-dev")),
        .package(url: "https://github.com/Brett-Best/SwiftGModule.git", .branch("bb-pkg-dev")),
    ],
    targets: [
        .target(name: "GdkPixbuf", dependencies: ["GIO", "GModule"]),
        .testTarget(name: "GdkPixbufTests", dependencies: ["GdkPixbuf"]),
    ]
)
