// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "PocketTTS",
    platforms: [
        .iOS(.v17),
    ],
    products: [
        .library(
            name: "PocketTTSBindings",
            targets: ["PocketTTSBindings"]
        ),
    ],
    targets: [
        .target(
            name: "PocketTTSBindings",
            dependencies: ["PocketTTS"]
        ),
        .binaryTarget(
            name: "PocketTTS",
            url: "https://github.com/Jon-Schneider/pocket-tts-ios/releases/download/v0.4.4-spm/PocketTTS-v0.4.4-spm.zip",
            checksum: "7fe1d85fc8a8aa8a59608ad4c0c90d27d56337fae66cb1b9ff96d83f24466f7d"
        ),
    ]
)
