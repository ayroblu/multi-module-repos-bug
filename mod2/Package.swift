// swift-tools-version: 6.0

import PackageDescription

let package = Package(
  name: "monorepo",
  platforms: [.macOS(.v15)],
  dependencies: [
    .package(url: "https://github.com/apple/swift-collections.git", from: "1.1.0")
  ]
)
