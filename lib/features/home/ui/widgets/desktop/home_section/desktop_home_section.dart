import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:my_portifolio/core/const/app_const.dart';
import 'package:my_portifolio/core/theme/app_colors.dart';
import 'package:my_portifolio/features/home/ui/widgets/profile_image.dart';
import 'package:my_portifolio/features/home/ui/widgets/scroll_controller_provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../../gen/assets.gen.dart';

class DesktopHomeSection extends StatelessWidget {
  const DesktopHomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SelectionArea(
                      child: Text(
                        "Hi, I'm ${AppConstants.userData.name}",
                        style: GoogleFonts.aBeeZee(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.darkBlue,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Lottie.asset(Assets.lottie.handWave, height: 10.h),
                  ],
                ),
                const SizedBox(height: 8),
                SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'I am a',
                        style: GoogleFonts.aBeeZee(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.darkBlue,
                        ),
                      ),
                      const SizedBox(width: 10),
                      DefaultTextStyle(
                        style: GoogleFonts.aBeeZee(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.darkGrey,
                        ),
                        child: AnimatedTextKit(
                          repeatForever: true,
                          // animatedTexts: AppConstants.userData.roles
                          //     .map(
                          //       (role) => RotateAnimatedText(role),
                          //     )
                          //     .toList(),
                          animatedTexts: [
                            RotateAnimatedText('Software Engineer'),
                            RotateAnimatedText('Flutter Developer'),
                          ],
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.darkBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {
                    var scrollCtrl = ScrollControllerProvider.of(context)
                        ?.itemScrollController;
                    scrollCtrl?.scrollTo(
                        index: 3, duration: const Duration(seconds: 1));
                  },
                  child: Text(
                    "Contact Me",
                    style: GoogleFonts.aBeeZee(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                SelectionArea(
                  child: Text(
                    AppConstants.userData.description,
                    style: GoogleFonts.aBeeZee(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.darkGrey,
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(
                    Icons.location_on,
                    color: AppColors.darkBlue,
                  ),
                  title: Text(
                    AppConstants.userData.city,
                    style: GoogleFonts.aBeeZee(),
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(
                    Icons.circle,
                    size: 20,
                    color: AppColors.green,
                  ),
                  title: Text(
                    "Available for new projects",
                    style: GoogleFonts.aBeeZee(),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(child: ProfileImage(height: 50)),
        ],
      ),
    );
  }
}
