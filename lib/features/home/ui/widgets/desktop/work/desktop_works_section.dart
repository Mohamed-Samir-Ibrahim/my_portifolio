import 'package:flutter/material.dart';
import 'package:my_portifolio/core/const/app_const.dart';
import 'package:my_portifolio/core/extensions/context_ext.dart';
import 'package:my_portifolio/core/theme/app_colors.dart';
import 'package:my_portifolio/features/home/ui/widgets/desktop/work/project_item.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DesktopWorksSection extends StatelessWidget {
  const DesktopWorksSection({super.key});

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
            "Projects",
            style: context.textTheme.bodyMedium?.copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.darkBlue,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          "Some of the noteworthy projects I have built:",
          style: context.textTheme.bodyMedium?.copyWith(
            fontSize: 12.sp,
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
              return Directionality(
                textDirection:
                    index % 2 == 0 ? TextDirection.ltr : TextDirection.rtl,
                child: ProjectItem(projectData: projectData),
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
