import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:my_portifolio/core/theme/app_assets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/theme/app_colors.dart';

class ProfileImage extends StatefulWidget {
  final double height;

  const ProfileImage({super.key, required this.height});

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0, end: -20).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, _animation.value),
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 50, top: 25),
                height: widget.height.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.darkGrey.withValues(alpha: 0.2),
                ),
              ),
              Container(
                height: widget.height.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                    image: AssetImage(AppAssets.profileImage),
                  ),
                  border: GradientBoxBorder(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.darkBlue,
                        AppColors.lightGrey,
                      ],
                    ),
                    width: 5,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
