import 'package:flutter/material.dart';
import 'package:my_portifolio/core/const/app_const.dart';
import 'package:my_portifolio/core/extensions/context_ext.dart';
import 'package:my_portifolio/core/theme/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'project_item.dart';

class MobileWorksSection extends StatelessWidget {
  const MobileWorksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
          decoration: BoxDecoration(
            color: AppColors.lightGrey,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Text(
            style: context.textTheme.bodyMedium?.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.darkBlue,
            ),
            "Projects",
          ),
        ),
        const SizedBox(height: 16),
        Text(
          "Some of the noteworthy projects I have built:",
          style: context.textTheme.bodyMedium?.copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.darkBlue,
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: 70.w,
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: AppConstants.projects.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              var projectData = AppConstants.projects[index];
              return GestureDetector(
                onTap: () {

                },
                child: MobileProjectItem(projectData: projectData),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 32);
            },
          ),
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}
