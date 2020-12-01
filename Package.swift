// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "PDTSimpleCalendar",
  platforms: [
    .iOS(.v12)
  ],
  products: [
    .library(name: "PDTSimpleCalendar", targets: ["PDTSimpleCalendar"])
  ],
  targets: [
    .target(
      name: "PDTSimpleCalendar",
      path: "PDTSimpleCalendar",
      exclude: ["PDTSimpleCalendar-Prefix.pch"],
      publicHeadersPath: "."),
    .testTarget(
        name: "PDTSimpleCalendarTestsHostApp",
        path: "PDTSimpleCalendarTestsHostApp"),
    .testTarget(
        name: "PDTSimpleCalendarTests",
        path: "PDTSimpleCalendarTests",
        dependencies: ["PDTSimpleCalendar", "PDTSimpleCalendarTestsHostApp"])
  ]
)
