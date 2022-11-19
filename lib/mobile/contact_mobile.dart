import 'package:flutter/material.dart';
import 'package:quitodev/constants.dart';
import 'package:quitodev/widgets/custom_button.dart';
import 'package:quitodev/widgets/custom_image.dart';
import 'package:quitodev/widgets/custom_text.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({
    Key? key,
    required this.isShowingEnglish,
  }) : super(key: key);

  final bool isShowingEnglish;

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  @override
  Widget build(BuildContext context) {
    return contactWidget();
  }

  Widget contactWidget() {
    return Container(
      height: 300,
      color: colorMagentaDark,
      child: Container(
        height: 300,
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
              contactTitleWidget(),
              const Spacer(),
              contactBodyWidget(),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget contactTitleWidget() {
    return CustomText(
      title: widget.isShowingEnglish ? textContactTitleEN : textContactTitleSP,
      weight: FontWeight.w600,
      size: 22,
      align: TextAlign.center,
      lines: 2,
    );
  }

  Widget contactBodyWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        contactButtonWidget(textContactGitHubTitle, textContactGitHubUrl),
        const SizedBox(width: 15),
        contactButtonWidget(textContactLinkedInTitle, textContactLinkedInUrl),
        const SizedBox(width: 15),
        contactButtonWidget(textContactEmailTitle, textContactEmailUrl),
      ],
    );
  }

  Widget contactButtonWidget(String title, String url) {
    return InkWell(
      onTap: () => openURL(url),
      child: Column(
        children: [
          CustomImage(
            image: "${title.toLowerCase()}.png",
            width: 70,
          ),
          const SizedBox(height: 10),
          CustomButton(
            text: title,
            radius: 30,
            textSize: 14,
            height: 30,
            backgroundColor: colorGrayDark,
            textColor: colorWhite,
            textWeight: FontWeight.w400,
            width: 80,
          ),
        ],
      ),
    );
  }

  Future<void> openURL(String link) async {
    final Uri url = Uri.parse(link);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      // throw "Could not launch $url";
    }
  }
}
