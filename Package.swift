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
            url: "https://github.com/Jon-Schneider/pocket-tts-ios/releases/download/v0.4.5-spm/PocketTTS-v0.4.5-spm.zip",
            checksum: "4a7cb120f5104c0346c4bdb73850f0b46e565544e67bf252d242d2bf67f30efb"
        ),
    ]
)
