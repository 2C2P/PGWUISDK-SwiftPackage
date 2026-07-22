// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "PGWUI",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "PGWUI",
            targets: [
                "PGWCore",
                "App",
                "Flutter",
                "FlutterPluginRegistrant",
                "objective_c",
                "pgw_sdk",
                "webview_flutter_wkwebview"
             ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/2C2P/PGWSDK-SwiftPackage", exact: "4.7.1"),
        .package(url: "https://github.com/2C2P/PGWSDKHELPER-SwiftPackage", exact: "4.2.1")
    ],
    targets: [
        .target(
            name: "PGWCore",
            dependencies: [
                .product(name: "PGW", package: "pgwsdk-swiftpackage"),
                .product(name: "PGWHelper", package: "pgwsdkhelper-swiftpackage")
            ]
        ),
        .binaryTarget(
            name: "App",
            url:"https://d27uu9vmlo4gwh.cloudfront.net/PGW_UI_SDK_iOS_v4.0.5/App.xcframework.zip",
            checksum: "8278803b6a24accf734b09f488bef3fa9340a7982e42ac42cf5d7d8e8b6f5bac"
        ),
        .binaryTarget(
            name: "Flutter",
            url:"https://d27uu9vmlo4gwh.cloudfront.net/PGW_UI_SDK_iOS_v4.0.5/Flutter.xcframework.zip",
            checksum: "915db5dc43564ca1d3ad70b764ce264b9df3d872e6a3d0a6d2d4b59e4bb6d15f"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url:"https://d27uu9vmlo4gwh.cloudfront.net/PGW_UI_SDK_iOS_v4.0.5/FlutterPluginRegistrant.xcframework.zip",
            checksum: "84d3275c1d538349463c26d8e74458fb954f767ba6107534cd6d08d0cea04c93"
        ),
        .binaryTarget(
            name: "objective_c",
            url:"https://d27uu9vmlo4gwh.cloudfront.net/PGW_UI_SDK_iOS_v4.0.5/objective_c.xcframework.zip",
            checksum: "ff2a6ae59fc6848889a68af3cb3ced16b76ce3b773965f9941811f76dd56b0c9"
        ),
        .binaryTarget(
            name: "pgw_sdk",
            url:"https://d27uu9vmlo4gwh.cloudfront.net/PGW_UI_SDK_iOS_v4.0.5/pgw_sdk.xcframework.zip",
            checksum: "c8b84d43ed1fe219f5c444da0b2ac7edfde917b0391bb9da5c1c92d1ab67d4c0"
        ),
        .binaryTarget(
            name: "webview_flutter_wkwebview",
            url:"https://d27uu9vmlo4gwh.cloudfront.net/PGW_UI_SDK_iOS_v4.0.5/webview_flutter_wkwebview.xcframework.zip",
            checksum: "94bed9b30d4997f73ef80a36f175d1643114637327cd8539fa2e3dfc105b3bd2"
        )
    ]
)