import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../../domain/controllers/home_controller.dart';
import '../../widgets/image_widget.dart';
import '../../widgets/text_widget.dart';

class BiographyWeb extends StatelessWidget {
  const BiographyWeb({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      color: colorIndigoDark,
      child: Container(
        height: 600,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          color: colorMagentaDark,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 50),
          child: Row(
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 420,
                      child: TextWidget(
                        title: homeController.isShowingEnglish
                            ? textAboutMeTitleEN
                            : textAboutMeTitleSP,
                        weight: FontWeight.w600,
                        size: 42,
                        lines: 3,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 420,
                      child: TextWidget(
                        title: homeController.isShowingEnglish
                            ? homeController.portfolio!.biographyEn
                            : homeController.portfolio!.biography,
                        weight: FontWeight.w300,
                        size: 20,
                        lines: 13,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 80),
              const ImageWidget(
                image: imageAboutMe,
                width: 400,
                height: 450,
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
