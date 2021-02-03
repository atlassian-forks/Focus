// swift-tools-version:5.3

import PackageDescription

let package = Package(
	name: "Focus",
	platforms: [
        .iOS(.v10),
    ],
	products: [
		.library(
			name: "Focus",
			targets: ["Focus"]),
	],
	dependencies: [
		.package(url: "https://github.com/typelift/SwiftCheck.git", .branch("master")),
		.package(url: "https://github.com/atlassian-forks/Operadics", .branch("spm-support")),
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
