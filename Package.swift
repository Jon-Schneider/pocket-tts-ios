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
            url: "https://github.com/Jon-Schneider/pocket-tts-ios/releases/download/v0.4.3-spm/PocketTTS-v0.4.3-spm.zip",
            checksum: "c1f58878b7e581aafda27b18b431a1789b17bff70810ad17a1ea37513124f0e9"
        ),
    ]
)
