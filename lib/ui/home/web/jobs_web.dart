import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../../domain/controllers/home_controller.dart';
import '../../widgets/job_detail_widget.dart';
import '../../widgets/text_widget.dart';

class JobsWeb extends StatelessWidget {
  const JobsWeb({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
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
          padding: const EdgeInsets.only(top: 50, bottom: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Spacer(),
              TextWidget(
                title: homeController.isShowingEnglish
                    ? textJobsTitleEN
                    : textJobsTitleSP,
                weight: FontWeight.w600,
                size: 42,
              ),
              const Spacer(),
              ScrollConfiguration(
                behavior: const ScrollBehavior(),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          homeController.portfolio!.jobs.length, (index) {
                        return JobDetailWidget(
                          key: Key(
                              homeController.portfolio!.jobs[index].company),
                          homeController: homeController,
                          job: homeController.portfolio!.jobs[index],
                        );
                      }),
                    ),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
