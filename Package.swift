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
            url:"https://d27uu9vmlo4gwh.cloudfront.net/PGW_UI_SDK_iOS_v4.0.2/App.xcframework.zip",
            checksum: "8023648190d4c168590ad22c05ae4901be0178555476dceefedfbea38fa41ed3"
        ),
        .binaryTarget(
            name: "Flutter",
            url:"https://d27uu9vmlo4gwh.cloudfront.net/PGW_UI_SDK_iOS_v4.0.2/Flutter.xcframework.zip",
            checksum: "fb4c188250996b3a537f4a1633c67ea2367aff9b674f784b0ad16430350be2e0"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url:"https://d27uu9vmlo4gwh.cloudfront.net/PGW_UI_SDK_iOS_v4.0.2/FlutterPluginRegistrant.xcframework.zip",
            checksum: "a0406efcdea0cb33f800d0206eca3f7c799b8057dc404173bca7cca4867d6dc0"
        ),
        .binaryTarget(
            name: "image_gallery_saver",
            url:"https://d27uu9vmlo4gwh.cloudfront.net/PGW_UI_SDK_iOS_v4.0.2/image_gallery_saver.xcframework.zip",
            checksum: "2b030e89e25903b7747329271563fada61a27a1faaeecb212fc7d1e3e10ff94b"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url:"https://d27uu9vmlo4gwh.cloudfront.net/PGW_UI_SDK_iOS_v4.0.2/path_provider_foundation.xcframework.zip",
            checksum: "dbe92667b2a1690e3fad6668424ebded4e55a62eb2f2b99f90cc166d1e3d7c6b"
        ),
        .binaryTarget(
            name: "pgw_sdk",
            url:"https://d27uu9vmlo4gwh.cloudfront.net/PGW_UI_SDK_iOS_v4.0.2/pgw_sdk.xcframework.zip",
            checksum: "aacf96b3b894489dbeda8d63d214ebb259761c31a91d7d4c8b4654cbb2a85007"
        ),
        .binaryTarget(
            name: "webview_flutter_wkwebview",
            url:"https://d27uu9vmlo4gwh.cloudfront.net/PGW_UI_SDK_iOS_v4.0.2/webview_flutter_wkwebview.xcframework.zip",
            checksum: "965a8f826526bdf8ba282c07006f841ffa170c839ebc5abdaf37804f7da3ac63"
        )
    ]
)