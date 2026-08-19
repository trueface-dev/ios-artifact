// swift-tools-version: 5.8
import PackageDescription

let package = Package(
    name: "TrueFaceLiveness",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "TrueFaceLiveness",
            targets: ["TrueFaceLiveness"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "TrueFaceLiveness",
            url: "https://github.com/trueface-dev/ios-artifact/releases/download/v0.2.3/TrueFaceLiveness.xcframework.zip",
            checksum: "e04a7893b1e6882ce8e731254cb6f1d7f551f9c7fd18d469a8d7a3d240568fc5"
        )
    ]
)
