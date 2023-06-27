import 'package:canvas_flutter_exampla/canvas/animated_battery_screen.dart';
import 'package:canvas_flutter_exampla/canvas/arc_and_curves_screen.dart';
import 'package:canvas_flutter_exampla/canvas/ovals_and_circles_screen.dart';
import 'package:canvas_flutter_exampla/canvas/polygon_screen.dart';
import 'package:canvas_flutter_exampla/widgets/custom_material_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void navigate(Widget page, BuildContext context) {
    Navigator.push(context, CupertinoPageRoute(builder: (_) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        title: const Text("Home Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomMaterialButton(
              title: 'Polygon',
              onPressed: () => navigate(const PolygonScreen(), context),
          ),

          CustomMaterialButton(
              title: 'Ovals and Circles',
              onPressed: () => navigate(const OvalsAndCirclesScreen(), context),
          ),

          CustomMaterialButton(
              title: 'Arc and Curves',
              onPressed: () => navigate(const ArcAndCurvesScreen(), context),
          ),

          CustomMaterialButton(
              title: 'Animated Battery',
              onPressed: () => navigate(const AnimatedBatteryScreen(), context),
          ),
        ],
      ),
    );
  }
}
