import 'package:flutter/material.dart';
import 'package:quitodev/core/constants.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
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
  Widget build(BuildContext context) {
    if (shadow == null) {
      return SizedBox(
        width: width,
        height: height ?? width,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius ?? 500),
          child: Image.asset("assets/$image", fit: BoxFit.cover),
        ),
      );
    }
    return Container(
      width: width,
      height: height ?? width,
      decoration: BoxDecoration(
        color: colorShadowDark,
        borderRadius: BorderRadius.circular(radius ?? 500),
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
        borderRadius: BorderRadius.circular(radius ?? 500),
        child: Image.asset("assets/$image", fit: BoxFit.cover),
      ),
    );
  }
}
