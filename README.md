# My Kotlin Resolver

A reusable Flutter plugin designed to automatically resolve Android build and dependency conflicts caused by mismatched Kotlin Gradle Plugin (KGP) versions in third-party dependencies.

## Why Do We Need This?
When upgrading Flutter versions (e.g., to Flutter 3.44+), the framework requires newer Kotlin configurations. However, older or unmaintained legacy plugins (such as payment gateways, compression tools, or local update utilities) might still enforce outdated Kotlin versions. This mismatch leads to strict Gradle build failures (`DependencyResolveDetails` conflicts).

This plugin seamlessly hooks into the Android build lifecycle and forces all subprojects to inherit a unified Kotlin version defined by the root project.

## Features
- **Zero Configuration:** Just add it to your `pubspec.yaml` and run.
- **Dynamic Version Fetching:** Automatically respects your root project's `kotlin_version` property.
- **Centralized Solution:** Eliminates the need to manually inject resolution strategies into individual project `build.gradle` files.

---

## Installation & Usage

To enforce this automated fix in any Flutter project, add the plugin directly from this GitHub repository to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter

  # Automated Kotlin version conflict resolver
  my_kotlin_resolver:
    git:
      url: [https://github.com/afrahbizan/my_kotlin_resolver.git](https://github.com/afrahbizan/my_kotlin_resolver.git)
      ref: main