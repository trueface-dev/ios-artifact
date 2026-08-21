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
            url: "https://github.com/trueface-dev/ios-artifact/releases/download/v0.2.9/TrueFaceLiveness.xcframework.zip",
            checksum: "d05f6990c479ada7f445614f04befc0000c2a29a345a6764595ceabe60ffb2a7"
        )
    ]
)
