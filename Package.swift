// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "PerfectSession",
    products: [
        .library(
            name: "PerfectSession",
            targets: ["PerfectSession"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ryancoyne/Perfect-Logger.git", from: "4.0.0"),
    ],
    targets: [
        .target(
            name: "PerfectSession",
            dependencies: ["PerfectLogger"],
            path: "Sources/PerfectSession"
        ),
        .testTarget(
            name: "PerfectSessionTests",
            dependencies: ["PerfectSession"]
        ),
    ]
)
