// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxBluetoothKit",
    defaultLocalization: "en",
    platforms: [
        .macOS(.v10_13), .iOS(.v11), .tvOS(.v11), .watchOS(.v4),
    ],
    products: [
        .library(name: "RxBluetoothKit", targets: ["RxBluetoothKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.0.0")),
    ],
    targets: [
        .target(
            name: "RxBluetoothKit",
            dependencies: [
                "RxSwift",
            ],
            path: ".",
            exclude: [
                "Example",
                "Tests",
                "Source/Info.plist",
                "Source/RxBluetoothKit.h",
            ],
            sources: [
                "Source",
            ]
        ),
    ]
)
