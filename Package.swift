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
            url: "https://github.com/trueface-dev/ios-artifact/releases/download/v0.2.8/TrueFaceLiveness.xcframework.zip",
            checksum: "a25c28e69c696bdb0e91ad9443b0d1f2a02152c226eb7b3b108c812cd87ab6cc"
        )
    ]
)
