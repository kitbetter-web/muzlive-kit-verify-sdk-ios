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
            url: "https://github.com/kitbetter-web/muzlive-kit-verify-sdk-ios/releases/download/v1.0.1-beta.1/KiTverifySDK.xcframework.zip",
            checksum: "6beb13e1adfc7661742bba6135f1e9fe0c26991caece5cc5ffa9a9abf92b6e87"
        ),
        .target(
            name: "KiTverifySDKTarget",
            dependencies: [
                "KiTverifySDK"
            ]
        )
    ]
)
