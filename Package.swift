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
            url: "https://github.com/kitbetter-web/muzlive-kit-verify-sdk-ios/releases/download/v0.1.0-beta.10/KiTverifySDK.xcframework.zip",
            checksum: "09c29e91032e965c7a6ef1c056871f353e9eba0681db4dad281f4a2eb94c110e"
        ),
        .target(
            name: "KiTverifySDKTarget",
            dependencies: [
                "KiTverifySDK"
            ]
        )
    ]
)
