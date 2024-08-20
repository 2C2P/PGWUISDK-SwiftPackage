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
        .package(url: "https://github.com/2C2P/PGWSDK-SwiftPackage", exact: "4.7.0"),
        .package(url: "https://github.com/2C2P/PGWSDKHELPER-SwiftPackage", exact: "4.2.0")
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
            url:"https://2c2p-cloudfront.s3.ap-southeast-1.amazonaws.com/devPortal/demoCode/Mobile/PGW_SDK/PGWUI/PGW_UI_SDK_iOS_v4.0.1/App.xcframework.zip",
            checksum: "edfa45b801ceef720988cf17d3b57e236041a6908fc543bf6cda86a03c55149c"
        ),
        .binaryTarget(
            name: "Flutter",
            url:"https://2c2p-cloudfront.s3.ap-southeast-1.amazonaws.com/devPortal/demoCode/Mobile/PGW_SDK/PGWUI/PGW_UI_SDK_iOS_v4.0.1/Flutter.xcframework.zip",
            checksum: "60d61c3893ece707d3ac01f7a983debf5543ddd6c7a841d3763fe6dd77ca3876"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url:"https://2c2p-cloudfront.s3.ap-southeast-1.amazonaws.com/devPortal/demoCode/Mobile/PGW_SDK/PGWUI/PGW_UI_SDK_iOS_v4.0.1/FlutterPluginRegistrant.xcframework.zip",
            checksum: "57399e84cc9f5f80fd6769a7d0c88270bfb5b3da5300504817a37b9b36f82e60"
        ),
        .binaryTarget(
            name: "image_gallery_saver",
            url:"https://2c2p-cloudfront.s3.ap-southeast-1.amazonaws.com/devPortal/demoCode/Mobile/PGW_SDK/PGWUI/PGW_UI_SDK_iOS_v4.0.1/image_gallery_saver.xcframework.zip",
            checksum: "993ef710b1e75536470d6aceb14acd1139d364cb8f1a489c117c40daf3ee97d5"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url:"https://2c2p-cloudfront.s3.ap-southeast-1.amazonaws.com/devPortal/demoCode/Mobile/PGW_SDK/PGWUI/PGW_UI_SDK_iOS_v4.0.1/path_provider_foundation.xcframework.zip",
            checksum: "a8307a388d366d1aca284b9af7e97e3fbf6bdf3ac98f5f71621cbe8b01c526fc"
        ),
        .binaryTarget(
            name: "pgw_sdk",
            url:"https://2c2p-cloudfront.s3.ap-southeast-1.amazonaws.com/devPortal/demoCode/Mobile/PGW_SDK/PGWUI/PGW_UI_SDK_iOS_v4.0.1/pgw_sdk.xcframework.zip",
            checksum: "2b040c7f9a8c8ed341faab8137f9751c84688213bfca186f596938d0396f2af5"
        ),
        .binaryTarget(
            name: "webview_flutter_wkwebview",
            url:"https://2c2p-cloudfront.s3.ap-southeast-1.amazonaws.com/devPortal/demoCode/Mobile/PGW_SDK/PGWUI/PGW_UI_SDK_iOS_v4.0.1/webview_flutter_wkwebview.xcframework.zip",
            checksum: "7be2d996b32fd8cdb967f9593e7ad627670c615cd763e74712cb897479484b22"
        )
    ]
)
