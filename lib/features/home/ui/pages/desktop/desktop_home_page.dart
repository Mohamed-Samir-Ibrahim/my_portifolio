import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_portifolio/core/theme/app_colors.dart';
import 'package:my_portifolio/features/home/ui/widgets/desktop/home_section/desktop_home_section.dart';
import 'package:my_portifolio/features/home/ui/widgets/desktop/skills_section/desktop_skills_section.dart';
import 'package:my_portifolio/features/home/ui/widgets/desktop/work/desktop_works_section.dart';
import 'package:my_portifolio/features/home/ui/widgets/scroll_controller_provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../widgets/desktop/contact_section/desktop_contact_section.dart';
import '../../widgets/desktop/desktop_app_bar.dart';

class DesktopHomePage extends StatefulWidget {
  const DesktopHomePage({super.key});

  @override
  State<DesktopHomePage> createState() => _DesktopHomePageState();
}

class _DesktopHomePageState extends State<DesktopHomePage> {
  final ItemScrollController itemScrollController = ItemScrollController();

  @override
  Widget build(BuildContext context) {
    return ScrollControllerProvider(
      itemScrollController: itemScrollController,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          log("DesktopHomePage");
          var scrollController =
              ScrollControllerProvider.of(context)!.itemScrollController;
          return Scaffold(
            backgroundColor: AppColors.scaffoldBgColor,
            body: Column(
              children: [
                Container(
                  color: AppColors.lightGrey,
                  width: 100.w,
                  height: 10.h,
                  child: const DesktopAppBar(),
                ),
                Expanded(
                  child: ScrollablePositionedList.builder(
                    itemScrollController: scrollController,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      switch (index) {
                        case 0:
                          return SizedBox(
                            height: 90.h,
                            child: const DesktopHomeSection(),
                          );
                        case 1:
                          // return const SizedBox.shrink();
                          return Container(
                            color: AppColors.lightGrey,
                            height: 70.h,
                            child: const DesktopSkillsSection(),
                          );
                        case 2:
                          return const DesktopWorksSection();
                        case 3:
                          return const DesktopContactSection();
                        default:
                          return Container();
                      }
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
