// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "RunLoop",
    products: [.library(name: "RunLoop", targets: ["RunLoop"]),
               //.executable(name: "RunLoop", targets: ["RunLoop"])
              ],
    dependencies: [],
    targets: [.systemLibrary(name: "CEvent", pkgConfig: "libevent"),
              .systemLibrary(name: "CThread"), .systemLibrary(name: "CMach"),
              .target(name: "RunLoop", dependencies: ["CEvent", "CThread", "CMach"])]
)
