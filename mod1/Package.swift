// swift-tools-version: 6.0

import PackageDescription

let package = Package(
  name: "monorepo",
  platforms: [.macOS(.v15)],
  dependencies: [
    .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.27.0")
  ]
)
