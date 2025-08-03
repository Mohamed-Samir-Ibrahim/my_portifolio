import 'dart:developer';

import 'package:my_portifolio/core/extensions/context_ext.dart';
import 'package:my_portifolio/core/extensions/padding_extensions.dart';
import 'package:my_portifolio/features/home/ui/widgets/desktop/app_bar_button.dart';
import 'package:my_portifolio/features/home/ui/widgets/desktop/view_cv_button.dart';
import 'package:my_portifolio/features/home/ui/widgets/scroll_controller_provider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DesktopAppBar extends StatelessWidget {
  const DesktopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    log("DesktopAppBar");
    var scrollController =
        ScrollControllerProvider.of(context)!.itemScrollController;
    return IntrinsicHeight(
      child: Row(
        children: [
          const SizedBox(width: 16),
          Text(
            "<MS />",
            style: context.textTheme.bodyMedium?.copyWith(
              fontSize: 16.sp,
            ),
          ),
          const Spacer(),
          AppBarButton(
            text: 'Home',
            onTap: () {
              scrollController.scrollTo(
                index: 0,
                duration: const Duration(milliseconds: 450),
              );
            },
          ),
          const SizedBox(width: 16),
          AppBarButton(
            text: 'Skills',
            onTap: () {
              scrollController.scrollTo(
                index: 1,
                duration: const Duration(milliseconds: 450),
              );
            },
          ),
          const SizedBox(width: 16),
          AppBarButton(
            text: 'Projects',
            onTap: () {
              scrollController.scrollTo(
                index: 2,
                duration: const Duration(milliseconds: 450),
              );
            },
          ),
          const SizedBox(width: 16),
          AppBarButton(
            text: 'Contact Me',
            onTap: () {
              scrollController.scrollTo(
                index: 3,
                duration: const Duration(milliseconds: 450),
              );
            },
          ),
          const SizedBox(width: 16),
          SizedBox(
            height: 5.h,
            child: const VerticalDivider(),
          ),
          const SizedBox(width: 16),
          const ViewCvButton(),
          const SizedBox(width: 16),
        ],
      ).setPageHorizontalPadding(),
    );
  }
}