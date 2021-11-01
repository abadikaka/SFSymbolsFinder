// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SFSymbolsFinder",
    platforms: [
        .iOS(.v13),
        .watchOS(.v6),
        .tvOS(.v13),
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "SFSymbolsFinder",
            targets: ["SFSymbolsFinder"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SFSymbolsFinder",
            dependencies: []),
        .testTarget(
            name: "SFSymbolsFinderTests",
            dependencies: ["SFSymbolsFinder"]),
    ]
)
