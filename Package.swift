// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "Pi-blink",
    dependencies: [
        .package(url: "https://github.com/uraimo/SwiftyGPIO.git", from: "1.0.0"),
    ],

    targets: [
	.target(
            name: "Pi-blink",
            dependencies: [ "SwiftyGPIO" ])
    ]
)
