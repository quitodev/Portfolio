import 'package:flutter/material.dart';

import 'text_widget.dart';

class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget({
    Key? key,
    required this.scrollController,
    required this.title,
    required this.position,
  }) : super(key: key);

  final ScrollController scrollController;
  final String title;
  final double position;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: InkWell(
        onTap: () => scrollController.animateTo(
          position,
          duration: const Duration(milliseconds: 1000),
          curve: Curves.easeInOut,
        ),
        child: TextWidget(
          title: title,
          weight: FontWeight.w300,
          size: 18,
        ),
      ),
    );
  }
}
