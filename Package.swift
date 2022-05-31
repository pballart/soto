// swift-tools-version:5.2
//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

import PackageDescription

let package = Package(
    name: "soto",
    platforms: [.iOS(.v12), .tvOS(.v12), .watchOS(.v5)],
    products: [
        .library(name: "SotoIoTAnalytics", targets: ["SotoIoTAnalytics"]),
    ],
    dependencies: [
        .package(url: "https://github.com/soto-project/soto-core.git", .branch("main"))
    ],
    targets: [
        .target(name: "SotoIoTAnalytics", dependencies: [.product(name: "SotoCore", package: "soto-core")], path: "./Sources/Soto/Services/IoTAnalytics"),
    ]
)

#if swift(>=5.6)
// Add the documentation compiler plugin if possible
package.dependencies.append(
    .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0")
)
#endif
