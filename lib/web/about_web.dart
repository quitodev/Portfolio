import 'package:flutter/material.dart';
import 'package:quitodev/constants.dart';
import 'package:quitodev/widgets/custom_image.dart';
import 'package:quitodev/widgets/custom_text.dart';

class AboutWeb extends StatefulWidget {
  const AboutWeb({
    Key? key,
    required this.isShowingEnglish,
  }) : super(key: key);

  final bool isShowingEnglish;

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {
  @override
  Widget build(BuildContext context) {
    return aboutMeWidget();
  }

  Widget aboutMeWidget() {
    return Container(
      height: 600,
      color: colorIndigoDark,
      child: Container(
        height: 600,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          color: colorMagentaDark,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 50),
          child: Row(
            children: [
              const Spacer(),
              aboutMeBodyWidget(),
              const SizedBox(width: 80),
              aboutMeImageWidget(),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget aboutMeBodyWidget() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          aboutMeTitleWidget(),
          const Spacer(),
          aboutMeInfoOneWidget(),
          const Spacer(),
          aboutMeInfoTwoWidget(),
        ],
      ),
    );
  }

  Widget aboutMeTitleWidget() {
    return SizedBox(
      width: 420,
      child: CustomText(
        title:
            widget.isShowingEnglish ? textAboutMeTitleEN : textAboutMeTitleSP,
        weight: FontWeight.w600,
        size: 42,
        lines: 3,
      ),
    );
  }

  Widget aboutMeInfoOneWidget() {
    return SizedBox(
      width: 420,
      child: CustomText(
        title: widget.isShowingEnglish
            ? textAboutMeInfoOneEN
            : textAboutMeInfoOneSP,
        weight: FontWeight.w300,
        size: 20,
        lines: 10,
      ),
    );
  }

  Widget aboutMeInfoTwoWidget() {
    return SizedBox(
      width: 420,
      child: CustomText(
        title: widget.isShowingEnglish
            ? textAboutMeInfoTwoEN
            : textAboutMeInfoTwoSP,
        weight: FontWeight.w300,
        size: 20,
        lines: 10,
      ),
    );
  }

  Widget aboutMeImageWidget() {
    return const CustomImage(
      image: imageAboutMe,
      width: 400,
      height: 450,
      radius: 10,
    );
  }
}
