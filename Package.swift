// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "Turbo",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "Turbo",
            targets: ["Turbo"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/AliSoftware/OHHTTPStubs", .upToNextMajor(from: "9.0.0")),
        .package(url: "https://github.com/httpswift/swifter.git", .upToNextMajor(from: "1.5.0"))
    ],
    targets: [
        .target(
            name: "Turbo",
            dependencies: [],
            path: "Source",
            exclude: ["Info.plist"],
            resources: [
                .copy("WebView/turbo.js")
            ]
        ),
        .testTarget(
            name: "TurboTests",
            dependencies: [
                "Turbo",
                .product(name: "OHHTTPStubsSwift", package: "OHHTTPStubs"),
                .product(name: "Swifter", package: "Swifter")
            ],
            path: "Tests",
            resources: [
                .copy("Fixtures"),
                .copy("Server")
            ]
        )
    ]
)
