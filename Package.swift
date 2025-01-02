// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "PGWUI",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "PGWUI",
            targets: [
                "PGWCore",
                "App",
                "Flutter",
                "FlutterPluginRegistrant",
                "image_gallery_saver",
                "path_provider_foundation",
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
            url:"https://d27uu9vmlo4gwh.cloudfront.net/PGW_UI_SDK_iOS_v4.0.4/App.xcframework.zip",
            checksum: "6f1dd6a072071094007012c36ca53845d4bbffc2d1bd34adaa479d30eb23e712"
        ),
        .binaryTarget(
            name: "Flutter",
            url:"https://d27uu9vmlo4gwh.cloudfront.net/PGW_UI_SDK_iOS_v4.0.4/Flutter.xcframework.zip",
            checksum: "8e3f936c4902a988f5e0bfeee97be595537fb8acccff95d81074422ad38f1cec"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url:"https://d27uu9vmlo4gwh.cloudfront.net/PGW_UI_SDK_iOS_v4.0.4/FlutterPluginRegistrant.xcframework.zip",
            checksum: "40e7d422316aad8e538d443e444a34da42dfc0e969d4e80fffbbc9fa580c2a16"
        ),
        .binaryTarget(
            name: "image_gallery_saver",
            url:"https://d27uu9vmlo4gwh.cloudfront.net/PGW_UI_SDK_iOS_v4.0.4/image_gallery_saver.xcframework.zip",
            checksum: "1739cd99e102e447cce4c7af8c2c551f2c92e3c14c5b967487ae435fe2ba3e0c"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url:"https://d27uu9vmlo4gwh.cloudfront.net/PGW_UI_SDK_iOS_v4.0.4/path_provider_foundation.xcframework.zip",
            checksum: "a63bffa0534b9811b278e17ad9e3cbfd29bb8e5c4f118d107ffd3426ab1fdb70"
        ),
        .binaryTarget(
            name: "pgw_sdk",
            url:"https://d27uu9vmlo4gwh.cloudfront.net/PGW_UI_SDK_iOS_v4.0.4/pgw_sdk.xcframework.zip",
            checksum: "562cc87bccbb571aec977aa35ff58e56f42a04441cdcaeafc69718ff27574807"
        ),
        .binaryTarget(
            name: "webview_flutter_wkwebview",
            url:"https://d27uu9vmlo4gwh.cloudfront.net/PGW_UI_SDK_iOS_v4.0.4/webview_flutter_wkwebview.xcframework.zip",
            checksum: "b833db6bfcdae55348cf4370a14b66539a4acd109b16d41f6f805982a70eef03"
        )
    ]
)
