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
    dependencies: [
        .package(url: "https://github.com/airbnb/lottie-ios.git", from: "4.5.0"),
    ],
    targets: [
        .binaryTarget(
            name: "KiTverify",
            url: "https://github.com/kitbetter-web/muzlive-kit-verify-sdk-ios/releases/download/v0.1.0-beta.2/KiTverify.xcframework.zip",
            checksum: "a1511e05bfbee5f443a96ea5cc3ebbadd8c7ccea0ed400a066fd7e1252208a10"
        ),
        .target(
            name: "KiTverifyTarget",
            dependencies: [
                "KiTverify",
                .product(name: "Lottie", package: "lottie-ios")
            ]
        )
    ]
)
