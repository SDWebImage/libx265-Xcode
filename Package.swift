// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "libx265",
    platforms: [
        .macOS(.v10_11), .iOS(.v9), .tvOS(.v9), .watchOS(.v2)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "libx265",
            targets: ["libx265"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "libx265",
            dependencies: [],
            path: ".",
            exclude: ["x265/source/common/arm", "x265/source/common/aarch64", "x265/source/common/ppc", "x265/source/common/x86", "x265/source/common/vec"],
            sources: ["x265/source/common", "x265/source/input", "x265/source/output", "x265/source/encoder"],
            publicHeadersPath: "include",
            cSettings: [.headerSearchPath("x265/source"),
                        .headerSearchPath("x265/source/common"),
                        .headerSearchPath("x265/source/encoder"),
                        .define("X265_DEPTH", to: "8"),
                        .define("HAVE_STRTOK_R", to: "1"),
                        .define("EXPORT_C_API", to: "1"),
                        .define("X265_NS", to: "x265"),
                        .define("X265_VERSION", to: "3.4")]
        )
    ],
    cLanguageStandard: .gnu11,
    cxxLanguageStandard: .gnucxx14
)
