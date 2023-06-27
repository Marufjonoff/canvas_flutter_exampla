import 'package:flutter/material.dart';

class PolygonScreen extends StatefulWidget {
  const PolygonScreen({super.key});

  @override
  State<PolygonScreen> createState() => _PolygonScreenState();
}

class _PolygonScreenState extends State<PolygonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Polygon', style: TextStyle(color: Colors.deepPurple)),
      ),
    );
  }
}
