import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback ontap;
  final Color backgroundColor;
  final Color textColor;
  final double width;
  final String text;
  final double height;

  const CustomElevatedButton({
    super.key,
    required this.ontap,
    required this.backgroundColor,
    required this.textColor,
    required this.width,
    required this.text,
    required this.height
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: ontap, // Pass callback reference without calling it
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,   // Use passed backgroundColor
          foregroundColor: textColor,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
