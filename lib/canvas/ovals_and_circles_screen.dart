import 'package:flutter/material.dart';

class OvalsAndCirclesScreen extends StatefulWidget {
  const OvalsAndCirclesScreen({super.key});

  @override
  State<OvalsAndCirclesScreen> createState() => _OvalsAndCirclesScreenState();
}

class _OvalsAndCirclesScreenState extends State<OvalsAndCirclesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ovals and Circles", style: TextStyle(color: Colors.deepPurple)),
      ),
    );
  }
}
