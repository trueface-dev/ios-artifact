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
            url: "https://github.com/trueface-dev/ios-artifact/releases/download/v0.2.2/TrueFaceLiveness.xcframework.zip",
            checksum: "223a8377a9793d22de75490c31f28be1c3fe0e43d3a57424eb7b2b933b9e35bd"
        )
    ]
)
