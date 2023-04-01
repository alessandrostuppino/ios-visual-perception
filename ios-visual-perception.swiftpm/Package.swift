// swift-tools-version: 5.5

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "Visual Perception",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "Visual Perception",
            targets: ["AppModule"],
            bundleIdentifier: "it.alessandrostuppino.visualPerception",
            teamIdentifier: "SXN36U8GSW",
            displayVersion: "1.0",
            bundleVersion: "1",
            iconAssetName: "AppIcon",
            accentColorAssetName: "AccentColor",
            supportedDeviceFamilies: [
                .pad
            ],
            supportedInterfaceOrientations: [
                .portrait
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: ".",
            resources: [
                .process("Resources")
            ]
        )
    ]
)
