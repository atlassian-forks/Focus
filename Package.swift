// swift-tools-version:5.3

import PackageDescription

let package = Package(
	name: "Focus",
	products: [
		.library(
			name: "Focus",
			targets: ["Focus"]),
	],
	dependencies: [
		.package(url: "https://github.com/typelift/SwiftCheck.git", .branch("master")),
		.package(url: "https://github.com/typelift/Operadics.git", .branch("master")),
	],
	targets: [
		.target(
			name: "Focus",
			dependencies: ["Operadics"],
			path: "Sources/Focus"),
		.testTarget(
			name: "FocusTests",
			dependencies: ["Focus", "Operadics", "SwiftCheck"]),
	]
)
