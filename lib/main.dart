import 'package:flutter/material.dart';
import 'package:oesmacv/log_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isVisible = false;

  get updateStatus {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  get textEditingController => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('SMACV'),
        ),
        body: const StudentLogin(),
      ),
    );
  }
}
