# Flutter Android テンプレート

## はじめに

これは、Android 向け Flutter アプリケーションを構築するためのテンプレートです。基本的な構造を提供し、一般的な構成（言語と動的テーマ）を含んでおり、迅速に開始するのに役立ちます。

## はじめに

### 初期化

このテンプレートリポジトリを使用して、名前を変更し、クローンします。

### プロジェクト名とパッケージ名の変更

Flutter でプロジェクト名を変更するには、いくつかのファイルを手動で変更する必要があります。プロジェクト名を変更するには、以下の手順に従います。

1. `pubspec.yaml` を更新します。
   `name` プロパティを新しいプロジェクト名に変更します。

```yaml
name: your_new_project_name
```

2. `android/app/src/main/res/values/strings.xml` を更新します。

`app_name` 文字列を新しいプロジェクト名に変更します。

```xml
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="app_name">新しいアプリ名</string>
</resources>
```

3. パッケージ名を更新します。

`android/app/src/main/kotlin/com/example/template/MainActivity.kt` で使用されているパッケージ名とそのパスを変更します。
`android\app\build.gradle.kts` ファイルで使用されている `namespace` および `applicationId` を変更します。

4. `.dart` のインポートを更新します。

インポートを次のように変更します。

```dart
import 'package:flutter_android_template/**.dart';
```

から：

```dart
import 'package:your_new_project_name/**.dart';
```

### GitHub Actions のアプリ署名

`.jks` ファイルを取得し、その base64 文字列を作成します。

```shell
# Unix
base64 -w 0 <キーストア名>.jks
# Windows
[System.Convert]::ToBase64String([System.IO.File]::ReadAllBytes("<キーストア名>.jks"))
```

GitHub リポジトリの `Secrets and Variables -- Actions` に、以下の secrets を追加します。
- SIGNING_KEYSTORE: 上記で作成した base64 コード
- SIGNING_KEYSTORE_PASSWORD: キーストアパスワード
- SIGNING_KEY_ALIAS: `.jks` ファイルのエイリアス
- SIGNING_KEY_PASSWORD: エイリアスのパスワード
