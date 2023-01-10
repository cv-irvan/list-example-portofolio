import 'package:flutter/material.dart';

class HyperFlutter extends StatefulWidget {
  const HyperFlutter({Key? key}) : super(key: key);

  @override
  State<HyperFlutter> createState() => _HyperFlutterState();
}

class _HyperFlutterState extends State<HyperFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hyper Flutter"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }
}
