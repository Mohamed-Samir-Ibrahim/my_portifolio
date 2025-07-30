import 'package:go_router/go_router.dart';
import 'package:my_portifolio/core/extensions/context_ext.dart';
import 'package:my_portifolio/core/route/routes_name.dart';
import 'package:my_portifolio/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MobileViewCvButton extends StatefulWidget {
  const MobileViewCvButton({super.key});

  @override
  State<MobileViewCvButton> createState() => _MobileViewCvButtonState();
}

class _MobileViewCvButtonState extends State<MobileViewCvButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go(RoutesName.cvFullPath);
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (event) {
          setState(() {
            isHovered = true;
          });
        },
        onExit: (event) {
          setState(() {
            isHovered = false;
          });
        },
        child: AnimatedContainer(
          decoration: BoxDecoration(
            color: isHovered ? AppColors.white : AppColors.darkBlue,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          duration: const Duration(milliseconds: 450),
          alignment: Alignment.center,
          child: Text(
            "View CV",
            style: context.textTheme.bodySmall?.copyWith(
              fontSize: 16.sp,
              color: isHovered ? AppColors.darkBlue : AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
