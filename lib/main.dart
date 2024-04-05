import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PlatformSpecificScreen(),
    );
  }
}

class PlatformSpecificScreen extends StatelessWidget {
  String _getPlatformMessage() {
    if (Platform.isAndroid) {
      return 'Привет, Android!';
    } else if (Platform.isIOS) {
      return 'Привет, iOS!';
    } else if (Platform.isWindows) {
      return 'Привет, Windows!';
    } else {
      return 'Привет, пользователь неизвестной платформы!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Приложение'),
      ),
      body: Center(
        child: Text(_getPlatformMessage()),
      ),
    );
  }
}
