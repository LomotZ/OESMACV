import 'package:flutter/material.dart';

class ViewgradePage extends StatefulWidget {
  const ViewgradePage({super.key});

  @override
  State<ViewgradePage> createState() => _ViewgradePageState();
}

class _ViewgradePageState extends State<ViewgradePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'View Grades',
        ),
      ),
    );
  }
}
