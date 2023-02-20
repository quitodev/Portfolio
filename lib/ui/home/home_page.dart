import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants.dart';
import '../../domain/controllers/home_controller.dart';
import '../../domain/repositories/home_repository.dart';
import '../../services/home_service.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/progress_widget.dart';
import 'mobile/biography_mobile.dart';
import 'mobile/footer_mobile.dart';
import 'mobile/header_mobile.dart';
import 'mobile/jobs_mobile.dart';
import 'mobile/projects_mobile.dart';
import 'web/biography_web.dart';
import 'web/footer_web.dart';
import 'web/header_web.dart';
import 'web/jobs_web.dart';
import 'web/projects_web.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  late final HomeController homeController;
  late final ScrollController scrollController;
  double pixels = 0;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    homeController = Get.put(HomeController(
      homeRepository: Get.put<HomeRepository>(HomeService()),
    ));
    scrollController = ScrollController();
    scrollController.addListener(() {
      setState(() {
        pixels = scrollController.position.pixels;
        // print(scrollController.position.pixels);
        // print(MediaQuery.of(context).size.width);
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
    super.build(context);
    return GetBuilder<HomeController>(
      id: HomeController.homeId,
      builder: (controller) {
        if (controller.isShowingPage) {
          return Scaffold(
            appBar: AppBar(
              title: AppBarWidget(
                homeController: controller,
                scrollController: scrollController,
              ),
              backgroundColor: colorIndigoDark,
              elevation: 1,
            ),
            body: Container(
              color: colorIndigoDark,
              child: Stack(
                children: [
                  AnimatedOpacity(
                    opacity: controller.isShowingLoader ? 1 : 0,
                    duration: const Duration(milliseconds: 500),
                    child: const ProgressWidget(),
                  ),
                  AnimatedOpacity(
                    opacity: controller.isShowingPage ? 1 : 0,
                    duration: const Duration(milliseconds: 1000),
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Column(
                        children: [
                          if (MediaQuery.of(context).size.width >= 920) ...[
                            HeaderWeb(homeController: controller),
                            BiographyWeb(homeController: controller),
                            JobsWeb(homeController: controller),
                            ProjectsWeb(homeController: controller),
                            FooterWeb(homeController: controller),
                          ],
                          if (MediaQuery.of(context).size.width < 920) ...[
                            HeaderMobile(homeController: controller),
                            BiographyMobile(homeController: controller),
                            JobsMobile(homeController: controller),
                            ProjectsMobile(homeController: controller),
                            FooterMobile(homeController: controller),
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
        return Container(
          color: colorIndigoDark,
          child: const ProgressWidget(),
        );
      },
    );
  }
}
