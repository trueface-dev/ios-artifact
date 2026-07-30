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
            url: "https://github.com/trueface-dev/ios-sdk/releases/download/1.0.0/TrueFaceLiveness.xcframework.zip",
            checksum: "fc87590c23ecf74966bb6551d9876c694226828933fc06ad0749b2aa70ec3966"
        )
    ]
)
