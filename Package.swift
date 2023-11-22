// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "topk",
    platforms: [
        .macOS(.v14)
    ],
    products: [
        .executable(name: "TopKCLI", targets: ["TopKCLI"]),
        .library(name: "TopK", targets: ["TopK"])
    ],
    dependencies: [
        .package(url: "https://github.com/google/swift-benchmark", from: "0.1.0"),
        .package(url: "https://github.com/apple/swift-collections.git", branch: "release/1.1")
    ],
    targets: [
        .executableTarget(
            name: "TopKCLI",
            dependencies: [
                "TopKBenchmark",
                .product(name: "Benchmark", package: "swift-benchmark")
            ]
        ),
        .target(
            name: "TopKBenchmark",
            dependencies: [
                "TopK",
                .product(name: "Benchmark", package: "swift-benchmark")
            ]
        ),
        .target(
            name: "TopK",
            dependencies: [
                .product(name: "Collections", package: "swift-collections")
            ]
        ),
        .testTarget(
            name: "TopKTests",
            dependencies:  ["TopK"]
        )
    ]
)
