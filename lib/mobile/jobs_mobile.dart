import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:quitodev/constants.dart';
import 'package:quitodev/widgets/custom_button.dart';
import 'package:quitodev/widgets/custom_image.dart';
import 'package:quitodev/widgets/custom_scroll_behavior.dart';
import 'package:quitodev/widgets/custom_text.dart';

class JobsMobile extends StatefulWidget {
  const JobsMobile({
    Key? key,
    required this.isShowingEnglish,
  }) : super(key: key);

  final bool isShowingEnglish;

  @override
  State<JobsMobile> createState() => _JobsMobileState();
}

class _JobsMobileState extends State<JobsMobile> {
  @override
  Widget build(BuildContext context) {
    return jobsWidget();
  }

  Widget jobsWidget() {
    return Container(
      height: 550,
      color: colorMagentaDark,
      child: Container(
        height: 550,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          color: colorIndigoDark,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Spacer(),
              jobsTitleWidget(),
              const Spacer(),
              jobsBodyWidget(),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget jobsTitleWidget() {
    return CustomText(
      title: widget.isShowingEnglish ? textJobsTitleEN : textJobsTitleSP,
      weight: FontWeight.w600,
      size: 30,
      align: TextAlign.center,
      lines: 3,
    );
  }

  Widget jobsBodyWidget() {
    List<String> accefyTech = [
      textTechSwift,
      textTechObjectiveC,
      textTechUIKit,
      textTechCocoaPods,
      textTechStoryboards,
      textTechWebView,
      textTechQRScanner,
      textTechRESTApi,
      textTechJSON,
      textTechPostman,
      textTechTesting,
      textTechGit,
      textTechAzure,
      textTechFigma,
      textTechScrum
    ];
    List<String> prosegurTech = [
      textTechSwift,
      textTechObjectiveC,
      textTechUIKit,
      textTechCocoaPods,
      textTechStoryboards,
      textTechNotifications,
      textTechRESTApi,
      textTechJSON,
      textTechPostman,
      textTechTesting,
      textTechGit,
      textTechJira,
      textTechFigma,
      textTechScrum
    ];

    return ScrollConfiguration(
      behavior: CustomScrollBehavior(),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            jobsDetailWidget(
              textJobsGoogle,
              widget.isShowingEnglish
                  ? textJobsAdminPositionEN
                  : textJobsAdminPositionSP,
              textJobsGoogleTime,
              null,
            ),
            const SizedBox(width: 10),
            jobsDetailWidget(
              textJobsAccefy,
              widget.isShowingEnglish
                  ? textJobsiOSPositionEN
                  : textJobsiOSPositionSP,
              widget.isShowingEnglish
                  ? textJobsAccefyTimeEN
                  : textJobsAccefyTimeSP,
              accefyTech,
            ),
            const SizedBox(width: 10),
            jobsDetailWidget(
              textJobsProsegur,
              widget.isShowingEnglish
                  ? textJobsiOSPositionEN
                  : textJobsiOSPositionSP,
              widget.isShowingEnglish
                  ? textJobsProsegurTimeEN
                  : textJobsProsegurTimeSP,
              prosegurTech,
            ),
          ],
        ),
      ),
    );
  }

  Widget jobsDetailWidget(
      String title, String position, String time, List<String>? tech) {
    return SizedBox(
      width: 300,
      child: Column(
        children: [
          jobsDetailImageWidget(title),
          jobsDetailTitleWidget(title),
          jobsDetailPositionWidget(position),
          const SizedBox(height: 10),
          jobsDetailTimeWidget(time),
          SizedBox(
            height: tech == null ? 30 : 10,
          ),
          if (tech != null) ...[
            jobsDetailTechWidget(tech),
          ],
        ],
      ),
    );
  }

  Widget jobsDetailImageWidget(String title) {
    return CustomImage(
        shadow: true, image: "${title.toLowerCase()}.jpg", width: 170);
  }

  Widget jobsDetailTitleWidget(String title) {
    return CustomText(
      title: title,
      weight: FontWeight.w600,
      size: 28,
    );
  }

  Widget jobsDetailPositionWidget(String position) {
    return CustomText(
      title: position,
      weight: FontWeight.w300,
      size: 20,
      align: TextAlign.center,
      lines: 2,
    );
  }

  Widget jobsDetailTimeWidget(String time) {
    return CustomButton(
      text: time,
      radius: 30,
      textSize: 16,
      height: 30,
      backgroundColor: colorViolet,
      textColor: colorWhite,
      textWeight: FontWeight.w300,
      width: 200,
    );
  }

  Widget jobsDetailTechWidget(List<String> tech) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 50,
        viewportFraction: 1,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        enlargeCenterPage: true,
        scrollDirection: Axis.vertical,
      ),
      items: tech.map(
        (tech) {
          return Row(
            children: [
              const Spacer(),
              CustomImage(image: "${tech.toLowerCase()}.png", width: 30),
              const SizedBox(width: 15),
              CustomButton(
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
    );
  }
}
