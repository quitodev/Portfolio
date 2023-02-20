import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../domain/controllers/home_controller.dart';
import '../../domain/entities/portfolio.dart';
import 'button_widget.dart';
import 'image_widget.dart';
import 'text_widget.dart';

class JobDetailWidget extends StatelessWidget {
  const JobDetailWidget({
    Key? key,
    required this.job,
    required this.homeController,
  }) : super(key: key);

  final Job job;
  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: SizedBox(
        width: 300,
        child: Column(
          children: [
            ImageWidget(
              shadow: true,
              image: "${job.company.toLowerCase()}.jpg",
              width: 170,
            ),
            TextWidget(
              title: job.company,
              weight: FontWeight.w600,
              size: 28,
            ),
            TextWidget(
              title: homeController.isShowingEnglish
                  ? job.positionEn
                  : job.position,
              weight: FontWeight.w300,
              size: 20,
              align: TextAlign.center,
              lines: 2,
            ),
            const SizedBox(height: 10),
            ButtonWidget(
              text: homeController.isShowingEnglish ? job.timeEn : job.time,
              radius: 30,
              textSize: 16,
              height: 30,
              backgroundColor: colorViolet,
              textColor: colorWhite,
              textWeight: FontWeight.w300,
              width: 200,
            ),
            const SizedBox(height: 10),
            CarouselSlider(
              options: CarouselOptions(
                height: 50,
                viewportFraction: 1,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                enlargeCenterPage: true,
                scrollDirection: Axis.vertical,
              ),
              items: job.technologies.map(
                (tech) {
                  return Row(
                    children: [
                      const Spacer(),
                      ImageWidget(
                        key: Key("Image${job.company}_$tech"),
                        image: "${tech.toLowerCase()}.png",
                        width: 30,
                      ),
                      const SizedBox(width: 15),
                      ButtonWidget(
                        key: Key("Button${job.company}_$tech"),
                        text: tech,
                        radius: 30,
                        textSize: 14,
                        height: 30,
                        backgroundColor: colorMagentaDark,
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
          ],
        ),
      ),
    );
  }
}
