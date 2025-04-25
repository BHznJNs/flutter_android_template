<div align="center">
    <br />
    <img src="assets/icon/icon.png" alt="NFC PLinkD Logo" width="160" height="160" />
    <h1>Flutter Android Template</h1>
    <a href="README_zh.md">中文</a> | 
    <a href="README_ja.md">日本語</a> | 
    <a href="README_fr.md">Français</a>
    <br />
    <br />
</div>

This is a template for building Flutter applications for Android. It provides a basic structure and includes common configurations (language and dynamic theme) to help you get started quickly.

## Getting Started

### Initiation

Use this template repo, change the name and clone it.

### Changing the Project Name and Package Name

Changing the project name in Flutter involves manually modifying several files. Follow these steps to change the project name:

1. Update `pubspec.yaml`:
    Change the `name` property to your new project name.

```yaml
name: your_new_project_name
```

2. Update `android/app/src/main/res/values/strings.xml`:

Change the `app_name` string to your new project name.

```xml
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="app_name">Your New App Name</string>
</resources>
```

3. Update package names

Change the package name used in `android/app/src/main/kotlin/com/example/template/MainActivity.kt`, as well as the path of it.
Change the `namespace` and `applicationId` used in the `android\app\build.gradle.kts` file.

4. Update the imports in `.dart`

Change the imports from:

```dart
import 'package:flutter_android_template/**.dart';
```

to:

```dart
import 'package:your_new_project_name/**.dart';
```

### App signing for GitHub Actions

Get your `.jks` file, create the base64 string of it:

```shell
# Unix
base64 -w 0 <Your-Key-Store-Name>.jks
# Windows
[System.Convert]::ToBase64String([System.IO.File]::ReadAllBytes("<Your-Key-Store-Name>.jks"))
```

In the `Secrets and Variables  --  Actions` of your GitHub repo, add secrets:
- SIGNING_KEYSTORE: The base64 code created above
- SIGNING_KEYSTORE_PASSWORD: The key store password
- SIGNING_KEY_ALIAS: The alias for the `.jks` file
- SIGNING_KEY_PASSWORD: The password for the alias
