import 'package:flutter/material.dart';

class AnimatedBatteryScreen extends StatefulWidget {
  const AnimatedBatteryScreen({super.key});

  @override
  State<AnimatedBatteryScreen> createState() => _AnimatedBatteryScreenState();
}

class _AnimatedBatteryScreenState extends State<AnimatedBatteryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Battery", style: TextStyle(color: Colors.deepPurple)),
      ),
    );
  }
}
