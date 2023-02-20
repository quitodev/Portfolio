import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../../domain/controllers/home_controller.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/image_widget.dart';
import '../../widgets/text_widget.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 900,
      color: colorIndigoDark,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            ImageWidget(
              shadow: true,
              image: imageHome,
              width: MediaQuery.of(context).size.width > 600
                  ? MediaQuery.of(context).size.width - 300
                  : 290,
            ),
            const Spacer(),
            TextWidget(
              title: homeController.isShowingEnglish
                  ? textHomeNameEN
                  : textHomeNameSP,
              weight: FontWeight.w600,
              size: 40,
              lines: 3,
            ),
            const SizedBox(height: 15),
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
            Row(
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
                        title: "+${homeController.portfolio!.experience}",
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
                const Spacer(),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
