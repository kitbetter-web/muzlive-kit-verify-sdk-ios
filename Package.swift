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
            url: "https://github.com/kitbetter-web/muzlive-kit-verify-sdk-ios/releases/download/v1.0.1/KiTverifySDK.xcframework.zip",
            checksum: "9af9bf537c750aa3e83a796ea7bb46a15925beecf76999e3638e851fbda7d3c9"
        ),
        .target(
            name: "KiTverifySDKTarget",
            dependencies: [
                "KiTverifySDK"
            ]
        )
    ]
)
