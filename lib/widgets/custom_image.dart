import 'package:flutter/material.dart';
import 'package:quitodev/constants.dart';

class CustomImage extends StatefulWidget {
  const CustomImage({
    Key? key,
    required this.image,
    required this.width,
    this.height,
    this.radius,
    this.shadow,
  }) : super(key: key);

  final String image;
  final double width;
  final double? height;
  final double? radius;
  final bool? shadow;

  @override
  State<CustomImage> createState() => _CustomImageState();
}

class _CustomImageState extends State<CustomImage> {
  @override
  Widget build(BuildContext context) {
    if (widget.shadow == null) {
      return SizedBox(
        width: widget.width,
        height: widget.height ?? widget.width,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(widget.radius ?? 500),
          child: Image.asset(
            "assets/${widget.image}",
            fit: BoxFit.cover,
          ),
        ),
      );
    } else {
      return Container(
        width: widget.width,
        height: widget.height ?? widget.width,
        decoration: BoxDecoration(
          color: colorShadowDark,
          borderRadius: BorderRadius.circular(widget.radius ?? 500),
          boxShadow: const [
            BoxShadow(
              color: colorShadowDark,
              spreadRadius: 10,
              blurRadius: 15,
              offset: Offset(0.1, 0.1),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(widget.radius ?? 500),
          child: Image.asset(
            "assets/${widget.image}",
            fit: BoxFit.cover,
          ),
        ),
      );
    }
  }
}
