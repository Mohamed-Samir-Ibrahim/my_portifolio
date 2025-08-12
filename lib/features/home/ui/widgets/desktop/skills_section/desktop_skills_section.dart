import 'package:flutter/material.dart';
import 'package:my_portifolio/core/const/app_const.dart';
import 'package:my_portifolio/core/extensions/context_ext.dart';
import 'package:my_portifolio/core/theme/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DesktopSkillsSection extends StatelessWidget {
  const DesktopSkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
          decoration: BoxDecoration(
            color: AppColors.lightGrey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Text(
            "Skills",
            style: context.textTheme.bodyMedium?.copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.darkBlue,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          "The skills, tools and technologies I am really good at:",
          style: context.textTheme.bodyMedium?.copyWith(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.darkBlue,
          ),
        ),
        SizedBox(height: 11.h),
        SizedBox(
          height: 40.h,
          width: 18.w,
          child: Scrollbar(
            child: MediaQuery.removePadding(
              context: context,
              removeBottom: true,
              child: GridView.builder(
                padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.05,horizontal: MediaQuery.of(context).size.width * 0.02,),
                scrollDirection: Axis.horizontal,
                itemCount: AppConstants.skills.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 45,
                  crossAxisSpacing: 30,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  var skill = AppConstants.skills[index];
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.15,
                    height: MediaQuery.of(context).size.height * 0.15,
                    decoration: BoxDecoration(color: AppColors.white,borderRadius: BorderRadius.circular(50)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(skill.imagePath,height: MediaQuery.of(context).size.height * 0.05,width: MediaQuery.of(context).size.width * 0.05,),
                        const SizedBox(height: 14),
                        Text(
                          skill.title,
                          style: context.textTheme.bodyMedium?.copyWith(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.darkBlue,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        const Spacer(),

      ],
    );
  }
}