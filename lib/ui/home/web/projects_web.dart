import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../../domain/controllers/home_controller.dart';
import '../../widgets/project_detail_web_widget.dart';
import '../../widgets/text_widget.dart';

class ProjectsWeb extends StatelessWidget {
  const ProjectsWeb({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    final CarouselController carouselController = CarouselController();
    final List<Widget> projectsWidget =
        List.generate(homeController.portfolio!.projects.length, (index) {
      return ProjectDetailWebWidget(
        key: Key(homeController.portfolio!.projects[index].name),
        homeController: homeController,
        project: homeController.portfolio!.projects[index],
      );
    });

    return Container(
      height: 750,
      color: colorIndigoDark,
      child: Container(
        height: 750,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          color: colorMagentaDark,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(
                title: homeController.isShowingEnglish
                    ? textProjectsTitleEN
                    : textProjectsTitleSP,
                weight: FontWeight.w600,
                size: 42,
              ),
              SizedBox(
                height: 550,
                child: CarouselSlider(
                  items: projectsWidget,
                  carouselController: carouselController,
                  options: CarouselOptions(
                    viewportFraction: 1,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      homeController.currentProjectImage = index;
                    },
                  ),
                ),
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
