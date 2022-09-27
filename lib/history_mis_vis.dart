import 'package:flutter/material.dart';

class HisMisVis extends StatefulWidget {
  const HisMisVis({super.key});

  @override
  State<HisMisVis> createState() => _HisMisVisState();
}

class _HisMisVisState extends State<HisMisVis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'History, Mission & Vission',
        ),
      ),
    );
  }
}
