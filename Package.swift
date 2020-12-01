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
      exclude: ["PDTSimpleCalendar-Prefix.pch", "Info.plist"],
      publicHeadersPath: "."
    ),
    .testTarget(
        name: "PDTSimpleCalendarTestsHostApp",
        path: "PDTSimpleCalendarTestsHostApp",
        exclude: ["Info.plist"]
    ),
    .testTarget(
        name: "PDTSimpleCalendarTests",
        dependencies: ["PDTSimpleCalendar", "PDTSimpleCalendarTestsHostApp"],
        path: "PDTSimpleCalendarTests",
        exclude: ["Info.plist"]
    )
  ]
)
