import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../../domain/controllers/home_controller.dart';
import '../../widgets/contact_widget.dart';
import '../../widgets/text_widget.dart';

class FooterMobile extends StatelessWidget {
  const FooterMobile({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: colorMagentaDark,
      child: Container(
        height: 300,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          color: colorIndigoDark,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Spacer(),
              TextWidget(
                title: homeController.isShowingEnglish
                    ? textContactTitleEN
                    : textContactTitleSP,
                weight: FontWeight.w600,
                size: 22,
                align: TextAlign.center,
                lines: 2,
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ContactWidget(
                    title: textContactGitHubTitle,
                    url: homeController.portfolio!.github,
                  ),
                  const SizedBox(width: 15),
                  ContactWidget(
                    title: textContactLinkedInTitle,
                    url: homeController.portfolio!.linkedin,
                  ),
                  const SizedBox(width: 15),
                  ContactWidget(
                    title: textContactEmailTitle,
                    url: homeController.portfolio!.email,
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
