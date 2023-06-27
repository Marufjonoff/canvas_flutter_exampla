import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  final Function()? onPressed;
  final String title;

  const CustomMaterialButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: double.infinity,
        height: 50,
        elevation: 0,
        color: Colors.deepPurple.shade500,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0)
        ),
        child: Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18)),
      ),
    );
  }
}
