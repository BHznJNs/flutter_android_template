# Flutter Android 模板

## 简介

这是一个用于构建 Android Flutter 应用程序的模板，其中包含了基础的动态主题、主题设置、语言设置和 GitHub Actions 构建脚本。

## 如何使用

### 初始化

使用此模板仓库，更改名称并克隆。

### 更改项目名称和包名

在 Flutter 中更改项目名称需要手动修改多个文件。按照以下步骤更改项目名称：

1. 更新 `pubspec.yaml`:
   将 `name` 属性更改为您的新项目名称。

```yaml
name: your_new_project_name
```

2. 更新 `android/app/src/main/res/values/strings.xml`:

将 `app_name` 字符串更改为您的新项目名称。

```xml
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="app_name">您的新应用名称</string>
</resources>
```

3. 更新包名

更改 `android/app/src/main/kotlin/com/example/template/MainActivity.kt` 中使用的包名及其路径。
更改 `android\app\build.gradle.kts` 文件中使用的 `namespace` 和 `applicationId`。

4. 更新 `.dart` 中的导入

将导入从：

```dart
import 'package:flutter_android_template/**.dart';
```

更改为：

```dart
import 'package:your_new_project_name/**.dart';
```

### GitHub Actions 的应用签名

获取您的 `.jks` 文件，创建其 base64 字符串：

```shell
# Unix
base64 -w 0 <您的密钥库名称>.jks
# Windows
[System.Convert]::ToBase64String([System.IO.File]::ReadAllBytes("<您的密钥库名称>.jks"))
```

在您的 GitHub 仓库的 `Secrets and Variables -- Actions` 中，添加 secrets：
- SIGNING_KEYSTORE: 上面创建的 base64 代码
- SIGNING_KEYSTORE_PASSWORD: 密钥库密码
- SIGNING_KEY_ALIAS: `.jks` 文件的别名
- SIGNING_KEY_PASSWORD: 别名的密码

## 用例

- [MotionEaseTune](https://github.com/BHznJNs/MotionEaseTune), 一个简单的应用程序，可以通过 100Hz 的声音防止您晕车。
