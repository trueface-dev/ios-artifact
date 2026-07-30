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
            url: "https://github.com/trueface-dev/ios-artifact/releases/download/v1.0.0/TrueFaceLiveness.xcframework.zip",
            checksum: "76432d502d265db6d9c60f90f8d3cb6e7f85a7926d4492e71444d834c88ac618"
        )
    ]
)
