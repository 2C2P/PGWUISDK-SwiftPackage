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
            url:"https://d27uu9vmlo4gwh.cloudfront.net/PGW_UI_SDK_iOS_v4.0.3/App.xcframework.zip",
            checksum: "08b1cc6108b6554f8e6eacff6976d959e751bee8c17c7edaa763872920f89064"
        ),
        .binaryTarget(
            name: "Flutter",
            url:"https://d27uu9vmlo4gwh.cloudfront.net/PGW_UI_SDK_iOS_v4.0.3/Flutter.xcframework.zip",
            checksum: "6dd13dff702f9cb928ab0959b96b535a1449823029ad7f912d3ec79302320c99"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url:"https://d27uu9vmlo4gwh.cloudfront.net/PGW_UI_SDK_iOS_v4.0.3/FlutterPluginRegistrant.xcframework.zip",
            checksum: "31026bd415b0b2c099660a2d2041bf9465843fc948dfb85aef3fa81bc8647b1d"
        ),
        .binaryTarget(
            name: "image_gallery_saver",
            url:"https://d27uu9vmlo4gwh.cloudfront.net/PGW_UI_SDK_iOS_v4.0.3/image_gallery_saver.xcframework.zip",
            checksum: "2938c5709029e814362ba61b26a805aeca348e9fce8d1a668c3a3d8f849e6b6a"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url:"https://d27uu9vmlo4gwh.cloudfront.net/PGW_UI_SDK_iOS_v4.0.3/path_provider_foundation.xcframework.zip",
            checksum: "52ccd74119b073e15ccacaace3a23279845103b2d8632c0e916ff7e14c77c644"
        ),
        .binaryTarget(
            name: "pgw_sdk",
            url:"https://d27uu9vmlo4gwh.cloudfront.net/PGW_UI_SDK_iOS_v4.0.3/pgw_sdk.xcframework.zip",
            checksum: "505bd1093e98bb4aa3aa74a7041db8318fd81b7582962687eb6471e5b00b1b62"
        ),
        .binaryTarget(
            name: "webview_flutter_wkwebview",
            url:"https://d27uu9vmlo4gwh.cloudfront.net/PGW_UI_SDK_iOS_v4.0.3/webview_flutter_wkwebview.xcframework.zip",
            checksum: "7596c482cc637c08660e7709c2f3fad6a0b1542e6cae70e6fb0d16855e4b46c4"
        )
    ]
)
