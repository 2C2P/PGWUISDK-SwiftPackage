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
        .package(url: "https://github.com/2C2P/PGWSDK-SwiftPackage", exact: "4.6.0"),
        .package(url: "https://github.com/2C2P/PGWSDKHELPER-SwiftPackage", exact: "4.1.1")
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
            url:"https://2c2p-cloudfront.s3.ap-southeast-1.amazonaws.com/devPortal/demoCode/Mobile/PGW_SDK/PGWUI/PGW_UI_SDK_iOS_v4.0.0/App.xcframework.zip",
            checksum: "ccf1078fc8094327d6c3f70231e00d78c0c85d13f7bd303672d4de20c6188fac"
        ),
        .binaryTarget(
            name: "Flutter",
            url:"https://2c2p-cloudfront.s3.ap-southeast-1.amazonaws.com/devPortal/demoCode/Mobile/PGW_SDK/PGWUI/PGW_UI_SDK_iOS_v4.0.0/Flutter.xcframework.zip",
            checksum: "7367edd5813f7f2f1e83a20efa6da16bd7c0af767f060e69bb8e2ec1366d4caf"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url:"https://2c2p-cloudfront.s3.ap-southeast-1.amazonaws.com/devPortal/demoCode/Mobile/PGW_SDK/PGWUI/PGW_UI_SDK_iOS_v4.0.0/FlutterPluginRegistrant.xcframework.zip",
            checksum: "dceb6a885881c4b13b2bf66dcad9f384d9595d2a35848ccd4aa62e0354c8818d"
        ),
        .binaryTarget(
            name: "image_gallery_saver",
            url:"https://2c2p-cloudfront.s3.ap-southeast-1.amazonaws.com/devPortal/demoCode/Mobile/PGW_SDK/PGWUI/PGW_UI_SDK_iOS_v4.0.0/image_gallery_saver.xcframework.zip",
            checksum: "750a979d92126e5f7a32ae301255368f4e2fc38833bf6471d886ab84f4a916a5"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url:"https://2c2p-cloudfront.s3.ap-southeast-1.amazonaws.com/devPortal/demoCode/Mobile/PGW_SDK/PGWUI/PGW_UI_SDK_iOS_v4.0.0/path_provider_foundation.xcframework.zip",
            checksum: "4ccc61b02e80bfd10174e81bd985566f3cab02c63ce73f4012f3eab2caf14c7b"
        ),
        .binaryTarget(
            name: "pgw_sdk",
            url:"https://2c2p-cloudfront.s3.ap-southeast-1.amazonaws.com/devPortal/demoCode/Mobile/PGW_SDK/PGWUI/PGW_UI_SDK_iOS_v4.0.0/pgw_sdk.xcframework.zip",
            checksum: "6d7527594d5e92b626067392069b7d47722989861f5675b376ed2c5f80dee622"
        ),
        .binaryTarget(
            name: "webview_flutter_wkwebview",
            url:"https://2c2p-cloudfront.s3.ap-southeast-1.amazonaws.com/devPortal/demoCode/Mobile/PGW_SDK/PGWUI/PGW_UI_SDK_iOS_v4.0.0/webview_flutter_wkwebview.xcframework.zip",
            checksum: "48667d637c2259cefc1fea6d8ab35485146e3c314f2491d8dba7002705d9f40d"
        )
    ]
)
