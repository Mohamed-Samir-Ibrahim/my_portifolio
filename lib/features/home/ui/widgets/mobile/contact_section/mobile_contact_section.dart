import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ionicons/ionicons.dart';
import 'package:my_portifolio/core/extensions/context_ext.dart';
import 'package:my_portifolio/core/theme/app_colors.dart';
import 'package:my_portifolio/features/home/ui/widgets/contact_link_item.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../../core/const/app_const.dart';

class MobileContactSection extends StatelessWidget {
  const MobileContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            decoration: BoxDecoration(
              color: AppColors.lightGrey,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              "Get in touch",
              style: context.textTheme.bodyMedium?.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.darkBlue,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "What’s next? Feel free to reach out to me if you're looking for\na developer, have a query, or simply want to connect.",
            style: context.textTheme.bodyMedium?.copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.darkBlue,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Spacer(),
              Icon(
                Ionicons.mail_outline,
                color: AppColors.darkGrey,
                size: 20,
              ),
              const SizedBox(width: 4),
              Text(
                AppConstants.userData.email,
                style: context.textTheme.bodyMedium?.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.darkBlue,
                ),
              ),
              const SizedBox(width: 4),
              IconButton(
                icon: const Icon(
                  Ionicons.copy_outline,
                  size: 20,
                ),
                color: AppColors.darkGrey,
                onPressed: () async {
                  await Clipboard.setData(
                     ClipboardData(text: AppConstants.userData.email),
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
              ),
              const Spacer(),
            ],
          ),
          Row(
            children: [
              const Spacer(),
              Icon(
                Ionicons.call_outline,
                color: AppColors.darkGrey,
                size: 20,
              ),
              const SizedBox(width: 4),
              Text(
                AppConstants.userData.phone,
                style: context.textTheme.bodyMedium?.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.darkBlue,
                ),
              ),
              const SizedBox(width: 4),
              IconButton(
                icon: const Icon(
                  Ionicons.copy_outline,
                  size: 20,
                ),
                color: AppColors.darkGrey,
                onPressed: () async {
                  await Clipboard.setData(
                     ClipboardData(text: AppConstants.userData.phone),
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
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            "You may also find me on these platforms!",
            style: context.textTheme.bodyMedium?.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.darkBlue,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ContactLinkItem(
                link: AppConstants.userData.linkedinUrl,
                icon: Ionicons.logo_linkedin,
              ),
              const SizedBox(width: 16),
              ContactLinkItem(
                link: AppConstants.userData.githubUrl,
                icon: Ionicons.logo_github,
              ),
              const SizedBox(width: 16),
              ContactLinkItem(
                link: AppConstants.userData.whatsappUrl,
                icon: Ionicons.logo_whatsapp,
              ),
              // const SizedBox(width: 16),
              // ContactLinkItem(
              //   link: AppConstants.userData.twitterUrl,
              //   icon: Ionicons.logo_twitter,
              // ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            color: AppColors.lightGrey,
            height: 8.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "© 2025 | Designed and coded with Flutter by Mohamed Samir",
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: AppColors.darkBlue,
                    fontSize: 13.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
