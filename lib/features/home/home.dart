
import 'package:flutter/material.dart';
import 'package:flutter_android_template/features/settings/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final actions = [
      IconButton(
        icon: const Icon(Icons.settings),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder:
              (context) => const SettingsPage()),
          );
        },
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Template'),
        actions: actions,
      ),
    );
  }
}
