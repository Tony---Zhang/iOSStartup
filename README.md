# Startup iOS

## Getting started

### Prepare fastlane environment

Run commands:

```
./scripts/build.sh
```

### Lanes
* Lane: **fastlane ios jet**
  Run unit tests on iPhone 7, run swift lint check, CI runs this after every commit to master.

* Lane: **fastlane ios extended_unit_test**
  Run unit tests on multiple device/iOS combinations, run swift lint check, CI runs this every night.

* Lane: **fastlane ios debug_sdk**
  Debug Production and copy into `fastlane/build/debug`

* Lane: **fastlane ios release_production_sdk**
  Release Production and copy into `fastlane/build/release`

* Lane: **fastlane ios release_internal_sdk**
  Release Internal sdk with push code into `internal` branch

* Lane: **fastlane ios release_production_sdk**
  Release Production sdk with `internal_#{lasted git commit code}`

* Lane: **fastlane ios prepare**
  Prepare carthage env

* Lane: **fastlane ios clear_build_files**
  Clear build files.

### SwiftLint
[SwiftLint](https://github.com/realm/SwiftLint) is a powerful check tool to help us to improvement code quality.

Here are rules reference:
https://github.com/realm/SwiftLint/blob/master/Rules.md

#### Configuration
We configure SwiftLint by adding a .swiftlint.yml in our project root directory with our defined rules there.
#### Report
We report lint result into a `report.xml` in our project root directory


