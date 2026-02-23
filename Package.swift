// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KiTverifySDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "KiTverifySDK",
            targets: ["KiTverifySDKTarget"]
        ),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "KiTverifySDK",
            url: "https://github.com/kitbetter-web/muzlive-kit-verify-sdk-ios/releases/download/v0.1.0-beta.12/KiTverifySDK.xcframework.zip",
            checksum: "2daee6035cd2caa1e5c7e9c4da788bc9a96c32ccb4270653af524d2ce70f24d7"
        ),
        .target(
            name: "KiTverifySDKTarget",
            dependencies: [
                "KiTverifySDK"
            ]
        )
    ]
)
