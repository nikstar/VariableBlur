// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "VariableBlur",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "VariableBlur", targets: ["VariableBlur"]),
    ],
    targets: [
        .target(name: "VariableBlur"),
    ]
)
