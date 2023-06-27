import 'package:flutter/material.dart';

class ArcAndCurvesScreen extends StatefulWidget {
  const ArcAndCurvesScreen({super.key});

  @override
  State<ArcAndCurvesScreen> createState() => _ArcAndCurvesScreenState();
}

class _ArcAndCurvesScreenState extends State<ArcAndCurvesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Arc and Curves", style: TextStyle(color: Colors.deepPurple)),
      ),
    );
  }
}
