import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.text,
    required this.radius,
    required this.textSize,
    required this.height,
    this.width,
    this.iconSize,
    this.icon,
    required this.backgroundColor,
    required this.textColor,
    required this.textWeight,
  }) : super(key: key);

  final String text;
  final double radius;
  final double textSize;
  final double height;
  final double? width;
  final double? iconSize;
  final IconData? icon;
  final Color backgroundColor;
  final Color textColor;
  final FontWeight textWeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Row(
        children: [
          if (icon != null) ...[
            const Spacer(),
            Icon(icon, color: textColor, size: iconSize),
          ],
          const Spacer(),
          Text(
            text,
            style: GoogleFonts.poppins(
              fontWeight: textWeight,
              fontSize: textSize,
              color: textColor,
            ),
            textAlign: TextAlign.left,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
