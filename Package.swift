// Package.swift
// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "Songbird",
    products: [
        .executable(
            name: "Songbird",
            targets: ["Songbird"]
        ),
    ],
    targets: [
        // Songbird target
        .target(
            name: "Songbird",
            dependencies: ["Markup", "Alpine", "HTMX"]
        ),
        
        // Markup target (no changes here)
        .target(
            name: "Markup",
            dependencies: []
        ),
        
        // Alpine compatibility module
        .target(
            name: "Alpine",
            dependencies: ["Markup"],
            path: "./Sources/Compat/Alpine"
        ),
        
        // HTMX compatibility module
        .target(
            name: "HTMX",
            dependencies: ["Markup"],
            path: "./Sources/Compat/HTMX"
        ),
        
        // Test targets
        .testTarget(
            name: "MarkupTests",
            dependencies: ["Songbird", "Markup"]
        ),
        .testTarget(
            name: "CompatTests",
            dependencies: ["Songbird", "Markup", "Alpine", "HTMX"]
        ),
    ]
)
