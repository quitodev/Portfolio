import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../../domain/controllers/home_controller.dart';
import '../../widgets/contact_widget.dart';
import '../../widgets/text_widget.dart';

class FooterWeb extends StatelessWidget {
  const FooterWeb({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 275,
      color: colorMagentaDark,
      child: Container(
        height: 275,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          color: colorIndigoDark,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 50),
          child: Column(
            children: [
              const Spacer(),
              TextWidget(
                title: homeController.isShowingEnglish
                    ? textContactTitleEN
                    : textContactTitleSP,
                weight: FontWeight.w600,
                size: 26,
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ContactWidget(
                    title: textContactGitHubTitle,
                    url: homeController.portfolio!.github,
                  ),
                  const SizedBox(width: 50),
                  ContactWidget(
                    title: textContactLinkedInTitle,
                    url: homeController.portfolio!.linkedin,
                  ),
                  const SizedBox(width: 50),
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
