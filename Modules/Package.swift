// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Modules",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "Modules",
            type: .dynamic,
            targets: [
                // MARK: Root
//                "RootElements",

                // MARK: Core
                "CoreProviders",

                // MARK: Features

                // MARK: Main
                "Primary"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "git@github.com:Moya/Moya.git",
            from: "14.0.0"
        ),
        .package(
            url: "git@github.com:pointfreeco/swift-composable-architecture.git",
            from: "0.6.0"
        )
    ],
    targets: [
        // MARK: Core
        .target(
            name: "CoreProviders",
            dependencies: [
                "Moya"
            ]
        ),
        .testTarget(
            name: "CoreProviders-Tests",
            dependencies: [
                "CoreProviders"
            ]
        ),

        // MARK: Main
        .target(
            name: "Primary",
            dependencies: [
                "CoreProviders",
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture")
            ]
        ),
        .testTarget(
            name: "Primary-Tests",
            dependencies: [
                "Primary"
            ]
        )
    ]
)
