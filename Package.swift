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
            url: "https://github.com/trueface-dev/ios-artifact/releases/download/v0.2.7/TrueFaceLiveness.xcframework.zip",
            checksum: "3b83ef04ee9f15688bacc044fad76a351e857019aa5946b94a16f8282ea6705e"
        )
    ]
)
