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
            url: "https://github.com/Jon-Schneider/pocket-tts-ios/releases/download/v0.4.1-spm/PocketTTS-v0.4.1-spm.zip",
            checksum: "b2d27333755eabd2a71e897de55f21044badf425d991e2e6568babe9cba146da"
        ),
    ]
)
