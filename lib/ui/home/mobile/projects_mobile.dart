import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../../domain/controllers/home_controller.dart';
import '../../widgets/project_detail_mobile_widget.dart';
import '../../widgets/text_widget.dart';

class ProjectsMobile extends StatelessWidget {
  const ProjectsMobile({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    final CarouselController carouselController = CarouselController();
    final List<Widget> projectsWidget =
        List.generate(homeController.portfolio!.projects.length, (index) {
      return ProjectDetailMobileWidget(
        key: Key(homeController.portfolio!.projects[index].name),
        homeController: homeController,
        project: homeController.portfolio!.projects[index],
      );
    });

    return Container(
      height: 1150,
      color: colorIndigoDark,
      child: Container(
        height: 1150,
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
                    ? textProjectsTitleEN
                    : textProjectsTitleSP,
                weight: FontWeight.w600,
                size: 30,
                align: TextAlign.center,
                lines: 3,
              ),
              const Spacer(),
              CarouselSlider(
                items: projectsWidget,
                carouselController: carouselController,
                options: CarouselOptions(
                  height: 950,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    homeController.currentProjectImage = index;
                  },
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: homeController.portfolio!.projects
                    .asMap()
                    .entries
                    .map((project) {
                  return GestureDetector(
                    key: Key(project.value.name),
                    onTap: () => carouselController.animateToPage(project.key),
                    child: Container(
                      width: 12,
                      height: 12,
                      margin: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 4,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: colorWhite.withOpacity(
                          homeController.currentProjectImage == project.key
                              ? 0.9
                              : 0.4,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
