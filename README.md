# Flutter Android Template

## Introduction

This is a template for building Flutter applications for Android. It provides a basic structure and includes common configurations (language and dynamic theme) to help you get started quickly.

## Usage Guide

1.  **Clone the repository:**

```bash
git clone https://github.com/your_username/flutter_android_template.git
```

2.  **Navigate to the project directory:**

```bash
cd flutter_android_template
```

3.  **Get dependencies:**

```bash
flutter pub get
```

4.  **Run the app:**

```bash
flutter run
```

This will launch the app on a connected Android device or emulator.

## Changing the Project Name

Changing the project name in Flutter involves modifying several files. While the `flutter create --project-name new_project_name .` command can sometimes update the project name, it's not the most reliable method and may not update all necessary configurations.

A more comprehensive approach is to manually update the project name in the following files:

*   `pubspec.yaml`
*   `android/app/src/main/AndroidManifest.xml`
*   `ios/Runner/Info.plist` (if applicable)
*   `ios/Runner.xcodeproj/project.pbxproj` (if applicable)
*   Potentially other files depending on your project setup.

Alternatively, you can use a tool like `flutter_rename_app` to automate this process. You can find more information about it [here](https://pub.dev/packages/flutter_rename_app).

To use `flutter_rename_app`, first install it:

```bash
flutter pub global activate flutter_rename_app
```

Then, run the command in your project directory:

```bash
flutter_rename_app
```
