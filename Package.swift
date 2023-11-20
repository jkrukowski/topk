// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "topk",
    platforms: [
        .macOS(.v14)
    ],
    dependencies: [
        .package(url: "https://github.com/google/swift-benchmark", from: "0.1.0"),
        .package(url: "https://github.com/apple/swift-collections.git", branch: "release/1.1")
    ],
    targets: [
        .executableTarget(
            name: "topk",
            dependencies: [
                .product(name: "Benchmark", package: "swift-benchmark"),
                .product(name: "Collections", package: "swift-collections")
            ]
        )
    ]
)
