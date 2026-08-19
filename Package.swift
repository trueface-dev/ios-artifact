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
            url: "https://github.com/trueface-dev/ios-artifact/releases/download/v0.2.6/TrueFaceLiveness.xcframework.zip",
            checksum: "058e6f95d7a11cd74fa7087ca8f8151cb829b0d77985d738b550d3250e4a5e12"
        )
    ]
)
