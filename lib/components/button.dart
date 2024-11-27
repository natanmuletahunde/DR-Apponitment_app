import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  const Button({super.key ,
  required this.title,
  required this.width,
  required this.onPressed,
  required this.disable
  });
  final double width;
  final String title;
  final bool disable;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}