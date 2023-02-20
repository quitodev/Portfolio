import 'package:flutter/material.dart';

import '../../core/constants.dart';
import '../../domain/controllers/home_controller.dart';
import 'language_widget.dart';
import 'text_widget.dart';
import 'menu_item_widget.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
    required this.homeController,
    required this.scrollController,
  }) : super(key: key);

  final HomeController homeController;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width >= 920) {
      return Row(
        children: [
          const TextWidget(
            title: textDeveloper,
            weight: FontWeight.w600,
            size: 22,
            color: colorMagentaDark,
          ),
          const Spacer(),
          MenuItemWidget(
            scrollController: scrollController,
            title: homeController.isShowingEnglish
                ? textMenuHomeEN
                : textMenuHomeSP,
            position: 0,
          ),
          MenuItemWidget(
            scrollController: scrollController,
            title: homeController.isShowingEnglish
                ? textMenuAboutMeEN
                : textMenuAboutMeSP,
            position: 550,
          ),
          MenuItemWidget(
            scrollController: scrollController,
            title: homeController.isShowingEnglish
                ? textMenuJobsEN
                : textMenuJobsSP,
            position: 1150,
          ),
          MenuItemWidget(
            scrollController: scrollController,
            title: homeController.isShowingEnglish
                ? textMenuProjectsEN
                : textMenuProjectsSP,
            position: 1700,
          ),
          MenuItemWidget(
            scrollController: scrollController,
            title: homeController.isShowingEnglish
                ? textMenuContactEN
                : textMenuContactSP,
            position: 2150,
          ),
          LanguageWidget(homeController: homeController),
        ],
      );
    }
    return ScrollConfiguration(
      behavior: const ScrollBehavior(),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const TextWidget(
              title: textDeveloper,
              weight: FontWeight.w600,
              size: 22,
              color: colorMagentaDark,
            ),
            const SizedBox(width: 100),
            MenuItemWidget(
              scrollController: scrollController,
              title: homeController.isShowingEnglish
                  ? textMenuHomeEN
                  : textMenuHomeSP,
              position: 0,
            ),
            MenuItemWidget(
              scrollController: scrollController,
              title: homeController.isShowingEnglish
                  ? textMenuAboutMeEN
                  : textMenuAboutMeSP,
              position: 900,
            ),
            MenuItemWidget(
              scrollController: scrollController,
              title: homeController.isShowingEnglish
                  ? textMenuJobsEN
                  : textMenuJobsSP,
              position: 1900,
            ),
            MenuItemWidget(
              scrollController: scrollController,
              title: homeController.isShowingEnglish
                  ? textMenuProjectsEN
                  : textMenuProjectsSP,
              position: 2450,
            ),
            MenuItemWidget(
              scrollController: scrollController,
              title: homeController.isShowingEnglish
                  ? textMenuContactEN
                  : textMenuContactSP,
              position: 3275,
            ),
            LanguageWidget(homeController: homeController),
          ],
        ),
      ),
    );
  }
}
