// swift-tools-version:4.0
//
//  Package.swift
//  PerfectThread
//
//  Created by Kyle Jessup on 2016-05-02.
//	Copyright (C) 2016 PerfectlySoft, Inc.
//
//===----------------------------------------------------------------------===//
//
// This source file is part of the Perfect.org open source project
//
// Copyright (c) 2015 - 2016 PerfectlySoft Inc. and the Perfect project authors
// Licensed under Apache License v2.0
//
// See http://perfect.org/licensing.html for license information
//
//===----------------------------------------------------------------------===//
//

import PackageDescription

#if os(Linux)
let package = Package(
    name: "PerfectThread",
    products: [
        .library(name: "PerfectThread", targets: ["PerfectThread"])
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftFrameworks/Perfect-LinuxBridge.git", .branch("swift4"))
    ],
    targets: [
        .target(name: "PerfectThread", dependencies: ["LinuxBridge"], path: ".", sources: ["Sources"])
    ]
)
#else
let package = Package(
    name: "PerfectThread",
    products: [
        .library(name: "PerfectThread", targets: ["PerfectThread"])
    ],
    targets: [
        .target(name: "PerfectThread", path: ".", sources: ["Sources"])
    ]
)
#endif
