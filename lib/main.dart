import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quitodev/constants.dart';
import 'package:quitodev/mobile/about_mobile.dart';
import 'package:quitodev/mobile/contact_mobile.dart';
import 'package:quitodev/mobile/home_mobile.dart';
import 'package:quitodev/mobile/jobs_mobile.dart';
import 'package:quitodev/mobile/projects_mobile.dart';
import 'package:quitodev/projects.dart';
import 'package:quitodev/web/about_web.dart';
import 'package:quitodev/web/contact_web.dart';
import 'package:quitodev/web/home_web.dart';
import 'package:quitodev/web/jobs_web.dart';
import 'package:quitodev/web/projects_web.dart';
import 'package:quitodev/widgets/custom_image.dart';
import 'package:quitodev/widgets/custom_progress.dart';
import 'package:quitodev/widgets/custom_scroll_behavior.dart';
import 'package:quitodev/widgets/custom_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: textApp,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScrollController scrollController = ScrollController();
  double pixels = 0;
  bool isShowingLoader = false;
  bool isShowingPage = false;
  bool isShowingEnglish = false;

  @override
  void initState() {
    super.initState();
    showLoader();
    hideLoader();
    getScrollPosition();
  }

  void showLoader() {
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        isShowingLoader = true;
      });
    });
  }

  void hideLoader() {
    Timer(const Duration(milliseconds: 3000), () {
      setState(() {
        isShowingLoader = false;
        isShowingPage = true;
      });
    });
  }

  void getScrollPosition() {
    scrollController.addListener(() {
      setState(() {
        pixels = scrollController.position.pixels;
        //print(scrollController.position.pixels);
        //print(MediaQuery.of(context).size.width); // a los 920 pasar a mobile!
      });
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBarWidget(),
        backgroundColor: colorIndigoDark,
        elevation: 1,
      ),
      body: Container(
        color: colorIndigoDark,
        child: Stack(
          children: [
            AnimatedOpacity(
              opacity: isShowingLoader ? 1 : 0,
              duration: const Duration(milliseconds: 500),
              child: const CustomProgress(),
            ),
            AnimatedOpacity(
              opacity: isShowingPage ? 1 : 0,
              duration: const Duration(milliseconds: 1000),
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  children: [
                    if (MediaQuery.of(context).size.width >= 920) ...[
                      HomeWeb(isShowingEnglish: isShowingEnglish),
                      AboutWeb(isShowingEnglish: isShowingEnglish),
                      JobsWeb(isShowingEnglish: isShowingEnglish),
                      ProjectsWeb(
                        isShowingEnglish: isShowingEnglish,
                        projects: Projects(),
                      ),
                      ContactWeb(isShowingEnglish: isShowingEnglish),
                    ],
                    if (MediaQuery.of(context).size.width < 920) ...[
                      HomeMobile(isShowingEnglish: isShowingEnglish),
                      AboutMobile(isShowingEnglish: isShowingEnglish),
                      JobsMobile(isShowingEnglish: isShowingEnglish),
                      ProjectsMobile(
                        isShowingEnglish: isShowingEnglish,
                        projects: Projects(),
                      ),
                      ContactMobile(isShowingEnglish: isShowingEnglish),
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget appBarWidget() {
    if (MediaQuery.of(context).size.width >= 920) {
      return Row(
        children: [
          developerWidget(),
          const Spacer(),
          menuWidget(isShowingEnglish ? textMenuHomeEN : textMenuHomeSP, 0),
          menuWidget(
              isShowingEnglish ? textMenuAboutMeEN : textMenuAboutMeSP, 550),
          menuWidget(isShowingEnglish ? textMenuJobsEN : textMenuJobsSP, 1150),
          menuWidget(
              isShowingEnglish ? textMenuProjectsEN : textMenuProjectsSP, 1700),
          menuWidget(
              isShowingEnglish ? textMenuContactEN : textMenuContactSP, 2150),
          languageWidget(),
        ],
      );
    } else {
      return ScrollConfiguration(
        behavior: CustomScrollBehavior(),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              developerWidget(),
              const SizedBox(width: 100),
              menuWidget(isShowingEnglish ? textMenuHomeEN : textMenuHomeSP, 0),
              menuWidget(
                  isShowingEnglish ? textMenuAboutMeEN : textMenuAboutMeSP,
                  900),
              menuWidget(
                  isShowingEnglish ? textMenuJobsEN : textMenuJobsSP, 1900),
              menuWidget(
                  isShowingEnglish ? textMenuProjectsEN : textMenuProjectsSP,
                  2450),
              menuWidget(
                  isShowingEnglish ? textMenuContactEN : textMenuContactSP,
                  3275),
              languageWidget(),
            ],
          ),
        ),
      );
    }
  }

  Widget developerWidget() {
    return const CustomText(
      title: textDeveloper,
      weight: FontWeight.w600,
      size: 22,
      color: colorMagentaDark,
    );
  }

  Widget menuWidget(String title, double position) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: InkWell(
        onTap: () => scrollController.animateTo(
          position,
          duration: const Duration(milliseconds: 1000),
          curve: Curves.easeInOut,
        ),
        child: CustomText(
          title: title,
          weight: FontWeight.w300,
          size: 18,
        ),
      ),
    );
  }

  Widget languageWidget() {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: InkWell(
        onTap: (() {
          setState(() {
            isShowingEnglish = isShowingEnglish ? false : true;
          });
        }),
        child: CustomImage(
          image: isShowingEnglish ? imageEnglish : imageSpanish,
          width: 25,
        ),
      ),
    );
  }
}
