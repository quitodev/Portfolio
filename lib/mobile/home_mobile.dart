import 'package:flutter/material.dart';
import 'package:quitodev/constants.dart';
import 'package:quitodev/widgets/custom_button.dart';
import 'package:quitodev/widgets/custom_image.dart';
import 'package:quitodev/widgets/custom_text.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({
    Key? key,
    required this.isShowingEnglish,
  }) : super(key: key);

  final bool isShowingEnglish;

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  Widget build(BuildContext context) {
    return homeWidget();
  }

  Widget homeWidget() {
    return Container(
      height: 900,
      color: colorIndigoDark,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            homeImageWidget(),
            const Spacer(),
            homeNameWidget(),
            const SizedBox(height: 15),
            homeAreaWidget(),
            const Spacer(),
            homeStatisticsWidget(),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  Widget homeImageWidget() {
    return CustomImage(
      shadow: true,
      image: imageHome,
      width: MediaQuery.of(context).size.width > 600
          ? MediaQuery.of(context).size.width - 300
          : 290,
    );
  }

  Widget homeNameWidget() {
    return CustomText(
      title: widget.isShowingEnglish ? textHomeNameEN : textHomeNameSP,
      weight: FontWeight.w600,
      size: 40,
      lines: 3,
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
    return Row(
      children: [
        homeStatisticsYearsWidget(),
        const Spacer(),
        homeStatisticsProjectsWidget(),
        const Spacer(),
      ],
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
