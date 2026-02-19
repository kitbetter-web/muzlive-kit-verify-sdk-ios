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
            url: "https://github.com/kitbetter-web/muzlive-kit-verify-sdk-ios/releases/download/v0.1.0-beta.9/KiTverifySDK.xcframework.zip",
            checksum: "991912317f0a51289a3ea952bb506f179da420e192f76e936354ef5cc06fdcf1"
        ),
        .target(
            name: "KiTverifySDKTarget",
            dependencies: [
                "KiTverifySDK"
            ]
        )
    ]
)
