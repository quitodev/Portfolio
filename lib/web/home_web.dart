import 'package:flutter/material.dart';
import 'package:quitodev/constants.dart';
import 'package:quitodev/widgets/custom_button.dart';
import 'package:quitodev/widgets/custom_image.dart';
import 'package:quitodev/widgets/custom_text.dart';

class HomeWeb extends StatefulWidget {
  const HomeWeb({
    Key? key,
    required this.isShowingEnglish,
  }) : super(key: key);

  final bool isShowingEnglish;

  @override
  State<HomeWeb> createState() => _HomeWebState();
}

class _HomeWebState extends State<HomeWeb> {
  @override
  Widget build(BuildContext context) {
    return homeWidget();
  }

  Widget homeWidget() {
    return Container(
      height: 550,
      color: colorIndigoDark,
      child: Padding(
        padding: const EdgeInsets.only(top: 50, bottom: 50),
        child: Row(
          children: [
            const Spacer(),
            homeImageWidget(),
            const SizedBox(width: 150),
            homeBodyWidget(),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  Widget homeImageWidget() {
    return const CustomImage(shadow: true, image: imageHome, width: 400);
  }

  Widget homeBodyWidget() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          homeNameWidget(),
          homeAreaWidget(),
          const Spacer(),
          homeStatisticsWidget(),
        ],
      ),
    );
  }

  Widget homeNameWidget() {
    return SizedBox(
      width: 350,
      child: CustomText(
        title: widget.isShowingEnglish ? textHomeNameEN : textHomeNameSP,
        weight: FontWeight.w600,
        size: 48,
        lines: 3,
      ),
    );
  }

  Widget homeAreaWidget() {
    return CustomButton(
      text: widget.isShowingEnglish ? textHomeAreaEN : textHomeAreaSP,
      radius: 30,
      textSize: 20,
      height: 50,
      backgroundColor: colorViolet,
      textColor: colorWhite,
      textWeight: FontWeight.w300,
      width: 290,
    );
  }

  Widget homeStatisticsWidget() {
    return SizedBox(
      width: 350,
      child: Row(
        children: [
          homeStatisticsYearsWidget(),
          const Spacer(),
          homeStatisticsProjectsWidget()
        ],
      ),
    );
  }

  Widget homeStatisticsYearsWidget() {
    return SizedBox(
      width: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            title: textHomeStatisticsYears,
            weight: FontWeight.w600,
            size: 28,
            color: colorIndigoLight,
          ),
          CustomText(
            title: widget.isShowingEnglish
                ? textHomeStatisticsYearsInfoEN
                : textHomeStatisticsYearsInfoSP,
            weight: FontWeight.w300,
            size: 20,
            color: colorIndigoLight,
            lines: 2,
          ),
        ],
      ),
    );
  }

  Widget homeStatisticsProjectsWidget() {
    return SizedBox(
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            title: textHomeStatisticsProjects,
            weight: FontWeight.w600,
            size: 28,
            color: colorIndigoLight,
          ),
          CustomText(
            title: widget.isShowingEnglish
                ? textHomeStatisticsProjectsInfoEN
                : textHomeStatisticsProjectsInfoSP,
            weight: FontWeight.w300,
            size: 20,
            color: colorIndigoLight,
            lines: 2,
          ),
        ],
      ),
    );
  }
}
