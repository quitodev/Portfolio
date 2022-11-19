import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:quitodev/constants.dart';
import 'package:quitodev/projects.dart';
import 'package:quitodev/widgets/custom_button.dart';
import 'package:quitodev/widgets/custom_image.dart';
import 'package:quitodev/widgets/custom_text.dart';

class ProjectsMobile extends StatefulWidget {
  const ProjectsMobile({
    Key? key,
    required this.isShowingEnglish,
    required this.projects,
  }) : super(key: key);

  final bool isShowingEnglish;
  final Projects projects;

  @override
  State<ProjectsMobile> createState() => _ProjectsMobileState();
}

class _ProjectsMobileState extends State<ProjectsMobile> {
  final CarouselController carouselController = CarouselController();
  int currentProjectImage = 0;

  @override
  Widget build(BuildContext context) {
    return projectsWidget();
  }

  Widget projectsWidget() {
    return Container(
      height: 1150,
      color: colorIndigoDark,
      child: Container(
        height: 1150,
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
              projectsTitleWidget(),
              const Spacer(),
              projectsBodyWidget(),
              const Spacer(),
              projectsFooterWidget(),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget projectsTitleWidget() {
    return CustomText(
      title:
          widget.isShowingEnglish ? textProjectsTitleEN : textProjectsTitleSP,
      weight: FontWeight.w600,
      size: 30,
      align: TextAlign.center,
      lines: 3,
    );
  }

  Widget projectsBodyWidget() {
    final List<Widget> projectsWidget = [
      textProjectsIconnect,
      textProjectsAutoBaires,
      textProjectsMorfando,
      textProjectsPuntoPlato,
      textProjectsPeluTime,
    ].map((project) => projectsDetailWidget(project)).toList();

    return CarouselSlider(
      items: projectsWidget,
      carouselController: carouselController,
      options: CarouselOptions(
        height: 950,
        viewportFraction: 1,
        onPageChanged: (index, reason) {
          setState(() {
            currentProjectImage = index;
          });
        },
      ),
    );
  }

  Widget projectsDetailWidget(String project) {
    return Column(
      children: [
        const Spacer(),
        projectsDetailLogoWidget(project),
        const Spacer(),
        Column(
          children: [
            projectsDetailNameWidget(project),
            const SizedBox(height: 5),
            projectsDetailAreaWidget(project),
            projectsDetailTechWidget(project),
            projectsDetailSystemsWidget(project),
          ],
        ),
        const Spacer(),
        projectsDetailInfoWidget(project),
        const Spacer(),
      ],
    );
  }

  Widget projectsDetailLogoWidget(String project) {
    return CustomImage(
      image: "${project.toLowerCase()}-logo.png",
      width: MediaQuery.of(context).size.width > 600
          ? MediaQuery.of(context).size.width - 300
          : 290,
    );
  }

  Widget projectsDetailNameWidget(String project) {
    return CustomButton(
      text: project,
      radius: 30,
      textSize: 20,
      height: 40,
      backgroundColor: colorViolet,
      textColor: colorWhite,
      textWeight: FontWeight.w400,
      width: 200,
    );
  }

  Widget projectsDetailAreaWidget(String project) {
    final Map<String, String> projectsArea = {
      textProjectsIconnect: widget.isShowingEnglish
          ? textProjectsIconnectAreaEN
          : textProjectsIconnectAreaSP,
      textProjectsAutoBaires: widget.isShowingEnglish
          ? textProjectsAutoBairesAreaEN
          : textProjectsAutoBairesAreaSP,
      textProjectsMorfando: widget.isShowingEnglish
          ? textProjectsMorfandoAreaEN
          : textProjectsMorfandoAreaSP,
      textProjectsPuntoPlato: widget.isShowingEnglish
          ? textProjectsPuntoPlatoAreaEN
          : textProjectsPuntoPlatoAreaSP,
      textProjectsPeluTime: widget.isShowingEnglish
          ? textProjectsPeluTimeAreaEN
          : textProjectsPeluTimeAreaSP,
    };

    return CustomButton(
      text: projectsArea[project]!,
      radius: 30,
      textSize: 14,
      height: 35,
      backgroundColor: colorBlackLight,
      textColor: colorIndigoLight,
      textWeight: FontWeight.w400,
      width: 200,
    );
  }

  Widget projectsDetailTechWidget(String project) {
    return SizedBox(
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
        items: widget.projects.projectsTech[project]!.map(
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
    );
  }

  Widget projectsDetailSystemsWidget(String project) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.projects.projectsSystems[project]!.map((image) {
        return Padding(
          padding: const EdgeInsets.only(right: 5),
          child: CustomImage(image: image, width: 40),
        );
      }).toList(),
    );
  }

  Widget projectsDetailInfoWidget(String project) {
    final Map<String, String> projectInfo = {
      textProjectsIconnect: widget.isShowingEnglish
          ? textProjectsIconnectInfoEN
          : textProjectsIconnectInfoSP,
      textProjectsAutoBaires: widget.isShowingEnglish
          ? textProjectsAutoBairesInfoEN
          : textProjectsAutoBairesInfoSP,
      textProjectsMorfando: widget.isShowingEnglish
          ? textProjectsMorfandoInfoEN
          : textProjectsMorfandoInfoSP,
      textProjectsPuntoPlato: widget.isShowingEnglish
          ? textProjectsPuntoPlatoInfoEN
          : textProjectsPuntoPlatoInfoSP,
      textProjectsPeluTime: widget.isShowingEnglish
          ? textProjectsPeluTimeInfoEN
          : textProjectsPeluTimeInfoSP,
    };

    return CustomText(
      title: projectInfo[project]!,
      weight: FontWeight.w300,
      size: 20,
      lines: 12,
    );
  }

  Widget projectsFooterWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.projects.projectsTitles.asMap().entries.map((project) {
        return GestureDetector(
          onTap: () => carouselController.animateToPage(project.key),
          child: Container(
            width: 12,
            height: 12,
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorWhite
                  .withOpacity(currentProjectImage == project.key ? 0.9 : 0.4),
            ),
          ),
        );
      }).toList(),
    );
  }
}
