import 'package:flutter/material.dart';

import '../../core/constants.dart';
import '../../domain/controllers/home_controller.dart';
import 'image_widget.dart';

class LanguageWidget extends StatelessWidget {
  const LanguageWidget({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: InkWell(
        onTap: (() {
          homeController.isShowingEnglish =
              homeController.isShowingEnglish ? false : true;
        }),
        child: ImageWidget(
          image: homeController.isShowingEnglish ? imageEnglish : imageSpanish,
          width: 25,
        ),
      ),
    );
  }
}
