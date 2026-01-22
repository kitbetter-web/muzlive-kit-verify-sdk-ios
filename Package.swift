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
            url: "https://github.com/kitbetter-web/muzlive-kit-verify-sdk-ios/releases/download/v0.1.0-beta.6/KiTverify.xcframework.zip",
            checksum: "dcd0e3c373d8bd015e319453cd48a49318586410a7063c0c15faa6f6a607612a"
        ),
        .target(
            name: "KiTverifyTarget",
            dependencies: [
                "KiTverify"
            ]
        )
    ]
)
