// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KiTverify",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "KiTverify",
            targets: ["KiTverifyTarget"]
        ),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "KiTverify",
            url: "https://github.com/kitbetter-web/muzlive-kit-verify-sdk-ios/releases/download/v0.1.0-beta.3/KiTverify.xcframework.zip",
            checksum: "331adf0b55e18184d69061a3ed77858cc7bd84f5d7881121b7bf531911e4b5c8"
        ),
        .target(
            name: "KiTverifyTarget",
            dependencies: [
                "KiTverify"
            ]
        )
    ]
)
