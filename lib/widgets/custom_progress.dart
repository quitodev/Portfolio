import 'package:flutter/material.dart';
import 'package:quitodev/constants.dart';

class CustomProgress extends StatefulWidget {
  const CustomProgress({Key? key}) : super(key: key);

  @override
  State<CustomProgress> createState() => _CustomProgressState();
}

class _CustomProgressState extends State<CustomProgress> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: colorMagentaDark,
      ),
    );
  }
}
