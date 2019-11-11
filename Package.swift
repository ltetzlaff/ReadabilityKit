// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "ReadabilityKit",
    products: [
        .library(
            name: "ReadabilityKit",
            targets: ["ReadabilityKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/honghaoz/Ji.git", from: "5.0.0")
    ],
    targets: [
        .target(
            name: "ReadabilityKit",
            dependencies: [
              "Ji"
            ],
            path: "Sources"
        ),
        .testTarget(
            name: "ReadabilityKitTests",
            dependencies: [
              "ReadabilityKit"
            ],
            path: "ReadabilityKitTests"
        ),
    ]
)
