// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "TaurusxGoogleAdMobAdapter",
    platforms: [.iOS("13.0")],

    products: [
        .library(
            name: "TaurusxGoogleAdMobAdapter",
            targets: ["TaurusxGoogleAdMobAdapterTarget"]
        )
    ],

    dependencies: [
        .package(
            url: "https://github.com/lee-tax/spm_test.git",
            from: "1.19.2"
        ),
        .package(
            url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
            from: "13.13.0"
        )
    ],

    targets: [
        .target(
            name: "TaurusxGoogleAdMobAdapterTarget",
            dependencies: [
                .target(name: "TaxGoogleAdmobAdapter"),
                .product(
                    name: "TaurusxAdsSDK",
                    package: "spm_test"
                ),
                .product(
                    name: "GoogleMobileAds",
                    package: "swift-package-manager-google-mobile-ads"
                )
            ],
            path: "TaurusxGoogleAdMobAdapterTarget"
        ),
        .binaryTarget(
            name: "TaxGoogleAdmobAdapter",
            url: "https://github.com/lee-tax/Admob-adapter-swift-package-manager/releases/download/1.0.0/TaxGoogleAdmobAdapter.zip",
            checksum: "54db4c0ba0e95aefd01468d97757aad95c68965d46a951b2db8a114668247579"
        )
    ]
)
