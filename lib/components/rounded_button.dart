import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({required this.title, required this.color, required this.onPressed, required this.height, required this.width});

  final Color color;
  final String title;
  final VoidCallback onPressed;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: SizedBox(
          width: width,
          height: height,
          child: MaterialButton(
            onPressed: onPressed,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.w400
              ),
            ),
          ),
        ),
      ),
    );
  }
}