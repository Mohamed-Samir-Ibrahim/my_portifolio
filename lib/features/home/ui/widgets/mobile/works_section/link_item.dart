import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkItem extends StatelessWidget {
  final String title;
  final String image;
  final String link;
  final double height;

  const LinkItem({
    super.key,
    required this.title,
    required this.image,
    required this.link,
    this.height = 35,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          launchUrl(Uri.parse(link));
        },
        child: Image.asset(
          image,
          height: height,
        ),
      ),
    );
  }
}
