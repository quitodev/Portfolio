import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../core/constants.dart';
import '../../domain/controllers/home_controller.dart';
import '../../domain/entities/portfolio.dart';
import 'button_widget.dart';
import 'image_widget.dart';
import 'text_widget.dart';

class ProjectDetailWebWidget extends StatelessWidget {
  const ProjectDetailWebWidget({
    Key? key,
    required this.homeController,
    required this.project,
  }) : super(key: key);

  final HomeController homeController;
  final Project project;

  @override
  Widget build(BuildContext context) {
    final Map<String, List<int>> projectsImages = {
      textProjectsIconnect: List.generate(5, (index) => index + 1),
      textProjectsAutoBaires: List.generate(5, (index) => index + 1),
      textProjectsMorfando: List.generate(8, (index) => index + 1),
      textProjectsPuntoPlato: List.generate(4, (index) => index + 1),
      textProjectsPeluTime: List.generate(8, (index) => index + 1),
    };
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        SizedBox(
          width: 300,
          height: 550,
          child: CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 4),
              enlargeCenterPage: true,
              scrollDirection: Axis.vertical,
            ),
            items: projectsImages[project.name]!.map((index) {
              return ImageWidget(
                key: Key("${project.name}_$index"),
                image: "${project.name.toLowerCase()}-$index.jpg",
                width: 300,
                height: 500,
                radius: 10,
              );
            }).toList(),
          ),
        ),
        const SizedBox(width: 100),
        SizedBox(
          width: 400,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Row(
                  children: [
                    ImageWidget(
                      image: "${project.name.toLowerCase()}-logo.png",
                      width: 160,
                    ),
                    const SizedBox(width: 15),
                    Column(
                      children: [
                        ButtonWidget(
                          text: project.name,
                          radius: 30,
                          textSize: 20,
                          height: 40,
                          backgroundColor: colorViolet,
                          textColor: colorWhite,
                          textWeight: FontWeight.w400,
                          width: 200,
                        ),
                        const SizedBox(height: 5),
                        ButtonWidget(
                          text: homeController.isShowingEnglish
                              ? project.subtitleEn
                              : project.subtitle,
                          radius: 30,
                          textSize: 14,
                          height: 35,
                          backgroundColor: colorBlackLight,
                          textColor: colorIndigoLight,
                          textWeight: FontWeight.w400,
                          width: 200,
                        ),
                        SizedBox(
                          width: 200,
                          child: CarouselSlider(
                            options: CarouselOptions(
                              height: 50,
                              viewportFraction: 1,
                              autoPlay: true,
                              autoPlayInterval: const Duration(seconds: 3),
                              enlargeCenterPage: true,
                              scrollDirection: Axis.vertical,
                            ),
                            items: project.technologies.map(
                              (tech) {
                                return Row(
                                  children: [
                                    const Spacer(),
                                    ImageWidget(
                                      key: Key("Image${project.name}_$tech"),
                                      image: "${tech.toLowerCase()}.png",
                                      width: 30,
                                    ),
                                    const SizedBox(width: 15),
                                    ButtonWidget(
                                      key: Key("Button${project.name}_$tech"),
                                      text: tech,
                                      radius: 30,
                                      textSize: 14,
                                      height: 30,
                                      backgroundColor: colorGrayDark,
                                      textColor: colorWhite,
                                      textWeight: FontWeight.w300,
                                      width: 120,
                                    ),
                                    const Spacer(),
                                  ],
                                );
                              },
                            ).toList(),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: project.platforms.map((platform) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: ImageWidget(
                                key: Key("${project.name}_$platform"),
                                image: "${platform.toLowerCase()}.png",
                                width: 40,
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: 500,
                  child: TextWidget(
                    title: homeController.isShowingEnglish
                        ? project.descriptionEn
                        : project.description,
                    weight: FontWeight.w300,
                    size: 20,
                    lines: 12,
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
