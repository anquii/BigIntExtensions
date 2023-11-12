// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "BigIntExtensions",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13)
    ],
    products: [
        .library(name: "BigIntExtensions", targets: ["BigIntExtensions"])
    ],
    dependencies: [
        .package(url: "https://github.com/attaswift/BigInt.git", exact: "5.3.0")
    ],
    targets: [
        .target(name: "BigIntExtensions", dependencies: ["BigInt"]),
        .testTarget(name: "BigIntExtensionsTests", dependencies: ["BigIntExtensions"])
    ]
)
