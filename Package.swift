// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "RunLoop",
    products: [.library(name: "RunLoop", targets: ["RunLoop"])],
    dependencies: [],
    targets: [.systemLibrary(name: "CEvent", pkgConfig: "libevent"), .target(name: "RunLoop", dependencies: ["CEvent"])]
)
