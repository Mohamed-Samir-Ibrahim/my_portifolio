import 'package:flutter/material.dart';

class LinkItem extends StatelessWidget {
  final String title;
  final String image;
  final String link;
  final double height;
  final Function()? onTap;

  const LinkItem({
    super.key,
    required this.title,
    required this.image,
    required this.link,
    this.height = 35,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        // onTap: () {
        //   launchUrl(Uri.parse(link));
        // },
        onTap: onTap,
        child: Image.asset(
          image,
          height: height,
        ),
      ),
    );
  }
}
