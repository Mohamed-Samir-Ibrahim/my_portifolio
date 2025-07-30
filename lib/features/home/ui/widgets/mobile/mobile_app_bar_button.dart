import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portifolio/core/extensions/context_ext.dart';
import 'package:my_portifolio/core/theme/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MobileAppBarButton extends StatefulWidget {
  final String text;
  final Function()? onTap;

  const MobileAppBarButton({super.key, required this.text, this.onTap});

  @override
  State<MobileAppBarButton> createState() => _MobileAppBarButtonState();
}

class _MobileAppBarButtonState extends State<MobileAppBarButton> {
  bool isEnter = false;
  late AnimationController animationController;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (event) {
          animationController.forward();
          setState(() {
            isEnter = true;
          });
        },
        onExit: (event) {
          animationController.reverse();
          setState(() {
            isEnter = false;
          });
        },
        child: SizedBox(
          width: 5.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.text,
                style: context.textTheme.bodyMedium?.copyWith(
                  fontSize: 16.sp,
                  color: isEnter ? AppColors.darkBlue : AppColors.darkGrey,
                ),
              ),
              FadeInUp(
                from: 10,
                controller: (p0) {
                  animationController = p0;
                },
                manualTrigger: true,
                animate: true,
                duration: const Duration(milliseconds: 350),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Divider(
                    thickness: 2,
                    color: AppColors.darkBlue,
                    height: 5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
