import 'package:flutter/material.dart';
import 'package:quitodev/constants.dart';
import 'package:quitodev/widgets/custom_image.dart';
import 'package:quitodev/widgets/custom_text.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({
    Key? key,
    required this.isShowingEnglish,
  }) : super(key: key);

  final bool isShowingEnglish;

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  @override
  Widget build(BuildContext context) {
    return aboutMeWidget();
  }

  Widget aboutMeWidget() {
    return Container(
      height: 1000,
      color: colorIndigoDark,
      child: Container(
        height: 1000,
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
              aboutMeTitleWidget(),
              const Spacer(),
              aboutMeInfoOneWidget(),
              const Spacer(),
              aboutMeInfoTwoWidget(),
              const Spacer(),
              aboutMeImageWidget(),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget aboutMeTitleWidget() {
    return CustomText(
      title: widget.isShowingEnglish ? textAboutMeTitleEN : textAboutMeTitleSP,
      weight: FontWeight.w600,
      size: 30,
      lines: 3,
    );
  }

  Widget aboutMeInfoOneWidget() {
    return CustomText(
      title:
          widget.isShowingEnglish ? textAboutMeInfoOneEN : textAboutMeInfoOneSP,
      weight: FontWeight.w300,
      size: 20,
      align: TextAlign.left,
      lines: 10,
    );
  }

  Widget aboutMeInfoTwoWidget() {
    return CustomText(
      title:
          widget.isShowingEnglish ? textAboutMeInfoTwoEN : textAboutMeInfoTwoSP,
      weight: FontWeight.w300,
      size: 20,
      align: TextAlign.left,
      lines: 10,
    );
  }

  Widget aboutMeImageWidget() {
    return CustomImage(
      image: imageAboutMe,
      width: MediaQuery.of(context).size.width > 600
          ? MediaQuery.of(context).size.width - 300
          : 290,
      height: MediaQuery.of(context).size.width > 600
          ? MediaQuery.of(context).size.width - 300
          : 290,
      radius: 10,
    );
  }
}
