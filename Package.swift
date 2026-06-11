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
            url: "https://github.com/Jon-Schneider/pocket-tts-ios/releases/download/v0.4.2-spm/PocketTTS-v0.4.2-spm.zip",
            checksum: "58e1dc673cb53820ecfc58dad87ede9dff43403de193bc79491fab3ed02d8288"
        ),
    ]
)
