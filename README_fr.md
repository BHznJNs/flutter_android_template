# Modèle Flutter Android

## Introduction

Il s'agit d'un modèle pour la création d'applications Flutter pour Android, qui comprend des thèmes dynamiques de base, des paramètres de thème, des paramètres de langue et des scripts de construction GitHub Actions.

## Comment utiliser

### Initialisation

Utilisez ce dépôt de modèle, changez le nom et clonez-le.

### Modification du nom du projet et du nom du package

La modification du nom du projet dans Flutter implique la modification manuelle de plusieurs fichiers. Suivez ces étapes pour modifier le nom du projet :

1. Mettez à jour `pubspec.yaml` :
   Modifiez la propriété `name` avec le nom de votre nouveau projet.

```yaml
name: your_new_project_name
```

2. Mettez à jour `android/app/src/main/res/values/strings.xml` :

Modifiez la chaîne `app_name` avec le nom de votre nouvelle application.

```xml
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="app_name">Nom de votre nouvelle application</string>
</resources>
```

3. Mettez à jour les noms de package

Modifiez le nom du package utilisé dans `android/app/src/main/kotlin/com/example/template/MainActivity.kt`, ainsi que son chemin.
Modifiez le `namespace` et l'`applicationId` utilisés dans le fichier `android\app\build.gradle.kts`.

4. Mettez à jour les importations dans `.dart`

Modifiez les importations de :

```dart
import 'package:flutter_android_template/**.dart';
```

à :

```dart
import 'package:your_new_project_name/**.dart';
```

### Signature de l'application pour GitHub Actions

Obtenez votre fichier `.jks`, créez sa chaîne base64 :

```shell
# Unix
base64 -w 0 <Nom-de-votre-magasin-de-clés>.jks
# Windows
[System.Convert]::ToBase64String([System.IO.File]::ReadAllBytes("<Nom-de-votre-magasin-de-clés>.jks"))
```

Dans les `Secrets and Variables -- Actions` de votre dépôt GitHub, ajoutez les secrets :
- SIGNING_KEYSTORE: Le code base64 créé ci-dessus
- SIGNING_KEYSTORE_PASSWORD: Le mot de passe du magasin de clés
- SIGNING_KEY_ALIAS: L'alias du fichier `.jks`
- SIGNING_KEY_PASSWORD: Le mot de passe de l'alias
