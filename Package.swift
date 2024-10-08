// swift-tools-version:5.0
import PackageDescription

let name = "PMKAddressBook"

let pkg = Package(name: name)
pkg.products = [
    .library(name: name, targets: [name]),
]
pkg.swiftLanguageVersions = [.v4, .v4_2, .v5]
pkg.dependencies = [
	.package(url: "https://github.com/mxcl/PromiseKit.git", from: "8.1.2")
]

let target: Target = .target(name: name)
target.path = "Sources"
target.dependencies = ["PromiseKit"]

let testTarget: Target = .testTarget(name: name + "Tests")
testTarget.path = "Tests"
testTarget.dependencies = ["PMKAddressBook"]

pkg.targets = [target, testTarget]

pkg.platforms = [
   .macOS(.v10_12), .iOS(.v10), .tvOS(.v10), .watchOS(.v3)
]
