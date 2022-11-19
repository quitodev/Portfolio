import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quitodev/constants.dart';

class CustomText extends StatefulWidget {
  const CustomText({
    Key? key,
    required this.title,
    required this.weight,
    required this.size,
    this.color,
    this.align,
    this.lines,
  }) : super(key: key);

  final String title;
  final FontWeight weight;
  final double size;
  final Color? color;
  final TextAlign? align;
  final int? lines;

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.title,
      style: GoogleFonts.poppins(
        fontWeight: widget.weight,
        fontSize: widget.size,
        color: widget.color ?? colorWhite,
      ),
      textAlign: widget.align ?? TextAlign.left,
      maxLines: widget.lines ?? 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
