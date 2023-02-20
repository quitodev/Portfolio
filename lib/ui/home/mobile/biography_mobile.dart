import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../../domain/controllers/home_controller.dart';
import '../../widgets/image_widget.dart';
import '../../widgets/text_widget.dart';

class BiographyMobile extends StatelessWidget {
  const BiographyMobile({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      color: colorIndigoDark,
      child: Container(
        height: 1000,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          color: colorMagentaDark,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Spacer(),
              TextWidget(
                title: homeController.isShowingEnglish
                    ? textAboutMeTitleEN
                    : textAboutMeTitleSP,
                weight: FontWeight.w600,
                size: 30,
                lines: 3,
              ),
              const Spacer(),
              TextWidget(
                title: homeController.isShowingEnglish
                    ? homeController.portfolio!.biographyEn
                    : homeController.portfolio!.biography,
                weight: FontWeight.w300,
                size: 20,
                align: TextAlign.left,
                lines: 13,
              ),
              const Spacer(),
              ImageWidget(
                image: imageAboutMe,
                width: MediaQuery.of(context).size.width > 600
                    ? MediaQuery.of(context).size.width - 300
                    : 290,
                height: MediaQuery.of(context).size.width > 600
                    ? MediaQuery.of(context).size.width - 300
                    : 290,
                radius: 10,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
