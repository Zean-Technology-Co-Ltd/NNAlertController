// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NNAlertController",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "NNAlertController",
            targets: ["NNAlertController"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/huri000/SwiftEntryKit", from: "2.0.0"),
        .package(url: "https://github.com/Zean-Technology-Co-Ltd/NNKitEx.git", from: "1.0.0"),
        .package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.0.1"))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "NNAlertController",
            dependencies: [
                "SwiftEntryKit",
                "NNKitEx",
                "SnapKit"
              ]),
        .testTarget(
            name: "NNAlertControllerTests",
            dependencies: ["NNAlertController"]),
    ]
)
