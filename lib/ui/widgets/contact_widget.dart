import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/constants.dart';
import 'button_widget.dart';
import 'image_widget.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({
    Key? key,
    required this.title,
    required this.url,
  }) : super(key: key);

  final String title;
  final String url;

  Future<void> openURL(String link) async {
    final Uri url = Uri.parse(link);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      // throw "Could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => openURL(url.contains("@") ? "mailto:$url" : url),
      child: Column(
        children: [
          ImageWidget(
            image: "${title.toLowerCase()}.png",
            width: 70,
          ),
          const SizedBox(height: 10),
          ButtonWidget(
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
}
