import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../../domain/controllers/home_controller.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/image_widget.dart';
import '../../widgets/text_widget.dart';

class HeaderWeb extends StatelessWidget {
  const HeaderWeb({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      color: colorIndigoDark,
      child: Padding(
        padding: const EdgeInsets.only(top: 50, bottom: 50),
        child: Row(
          children: [
            const Spacer(),
            const ImageWidget(shadow: true, image: imageHome, width: 400),
            const SizedBox(width: 150),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 350,
                    child: TextWidget(
                      title: homeController.isShowingEnglish
                          ? textHomeNameEN
                          : textHomeNameSP,
                      weight: FontWeight.w600,
                      size: 48,
                      lines: 3,
                    ),
                  ),
                  ButtonWidget(
                    text: homeController.isShowingEnglish
                        ? textHomeAreaEN
                        : textHomeAreaSP,
                    radius: 30,
                    textSize: 20,
                    height: 50,
                    backgroundColor: colorViolet,
                    textColor: colorWhite,
                    textWeight: FontWeight.w300,
                    width: 290,
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 350,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 180,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWidget(
                                title: "+${homeController.portfolio!.years}",
                                weight: FontWeight.w600,
                                size: 28,
                                color: colorIndigoLight,
                              ),
                              TextWidget(
                                title: homeController.isShowingEnglish
                                    ? textHomeStatisticsYearsInfoEN
                                    : textHomeStatisticsYearsInfoSP,
                                weight: FontWeight.w300,
                                size: 20,
                                color: colorIndigoLight,
                                lines: 2,
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: 120,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWidget(
                                title:
                                    "+${homeController.portfolio!.experience}",
                                weight: FontWeight.w600,
                                size: 28,
                                color: colorIndigoLight,
                              ),
                              TextWidget(
                                title: homeController.isShowingEnglish
                                    ? textHomeStatisticsProjectsInfoEN
                                    : textHomeStatisticsProjectsInfoSP,
                                weight: FontWeight.w300,
                                size: 20,
                                color: colorIndigoLight,
                                lines: 2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
