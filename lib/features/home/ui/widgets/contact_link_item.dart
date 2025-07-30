import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_portifolio/core/theme/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactLinkItem extends StatelessWidget {
  final String link;
  final IconData icon;

  const ContactLinkItem({
    super.key,
    required this.link,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        size: 45,
      ),
      color: AppColors.darkGrey,
      onPressed: () async {
        await launchUrl(Uri.parse(link));
        await Clipboard.setData(
          const ClipboardData(text: "link"),
        );
        Fluttertoast.showToast(
          msg: "Copied to clipboard",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          webBgColor: "#111827",
          backgroundColor: AppColors.darkBlue,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      },
    );
  }
}
