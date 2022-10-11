// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "Thespian",
    platforms: [
        .iOS(.v14),
        .macOS(.v12),
        .tvOS(.v14),
        .watchOS(.v7)
    ],
    products: [
        .library(
            name: "Thespian",
            targets: ["Thespian"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/vmanot/Swallow.git", branch: "master")
    ],
    targets: [
        .target(
            name: "Thespian",
            dependencies: ["Swallow"],
            path: "Sources"
        ),
        .testTarget(
            name: "ThespianTests",
            dependencies: ["Thespian"],
            path: "Tests"
        )
    ]
)
