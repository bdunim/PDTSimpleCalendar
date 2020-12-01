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
      exclude: ["Info.plist"]
    ),
    .testTarget(
        name: "PDTSimpleCalendarTestsHostApp",
        exclude: ["Info.plist"]
    ),
    .testTarget(
        name: "PDTSimpleCalendarTests",
        dependencies: ["PDTSimpleCalendar", "PDTSimpleCalendarTestsHostApp"],
        exclude: ["Info.plist"]
    )
  ]
)
