import 'package:flutter/material.dart';
import 'package:my_portifolio/core/const/app_const.dart';
import 'package:my_portifolio/core/extensions/context_ext.dart';
import 'package:my_portifolio/core/theme/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MobileSkillsSection extends StatefulWidget {
  const MobileSkillsSection({super.key});

  @override
  State<MobileSkillsSection> createState() => _MobileSkillsSectionState();
}

class _MobileSkillsSectionState extends State<MobileSkillsSection> {
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 14),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Text(
            "Skills",
            style: context.textTheme.bodyMedium?.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.darkBlue,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          "The skills, tools and technologies I am really good at:",
          style: context.textTheme.bodyMedium?.copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.darkBlue,
          ),
        ),
        const SizedBox(height: 44),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width * 0.45,
          child: Scrollbar(
            controller: scrollController,
            child: MediaQuery.removePadding(
            context: context,
           removeBottom: true,
           removeTop: true,
              child: GridView.builder(
                padding: const EdgeInsets.symmetric(vertical: 20),
                controller: scrollController,
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
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(skill.imagePath, height: MediaQuery.of(context).size.height * 0.036, width: MediaQuery.of(context).size.width * 0.036,),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
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