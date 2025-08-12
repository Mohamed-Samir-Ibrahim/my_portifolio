import 'package:flutter/material.dart';
import 'package:my_portifolio/core/extensions/context_ext.dart';
import 'package:my_portifolio/core/extensions/padding_extensions.dart';
import 'package:my_portifolio/core/theme/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Mohamed Samir",
          style: TextStyle(fontWeight: FontWeight.bold,)
          // context.textTheme.bodyMedium?.copyWith(
          //   fontSize: 16.sp,
          // ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
          icon: Icon(Icons.menu, color: AppColors.darkBlue),
        ),
      ],
    ).setPageHorizontalPadding();
  }
}
