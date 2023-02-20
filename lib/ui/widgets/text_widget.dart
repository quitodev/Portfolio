import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
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
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        fontWeight: weight,
        fontSize: size,
        color: color ?? colorWhite,
      ),
      textAlign: align ?? TextAlign.left,
      maxLines: lines ?? 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
