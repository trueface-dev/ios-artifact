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
            url: "https://github.com/trueface-dev/ios-artifact/releases/download/v0.2.4/TrueFaceLiveness.xcframework.zip",
            checksum: "d2160f7c33a5eed087a2f5bc0ac9478e431c51e71f8b10976f475ab0f870297b"
        )
    ]
)
