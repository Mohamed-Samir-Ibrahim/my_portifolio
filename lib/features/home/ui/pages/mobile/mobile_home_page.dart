import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_portifolio/core/theme/app_colors.dart';
import 'package:my_portifolio/features/home/ui/widgets/mobile/contact_section/mobile_contact_section.dart';
import 'package:my_portifolio/features/home/ui/widgets/mobile/home_section/mobile_home_section.dart';
import 'package:my_portifolio/features/home/ui/widgets/mobile/mobile_app_bar.dart';
import 'package:my_portifolio/features/home/ui/widgets/mobile/mobile_drawer.dart';
import 'package:my_portifolio/features/home/ui/widgets/mobile/skills_section/mobile_skills_section.dart';
import 'package:my_portifolio/features/home/ui/widgets/mobile/works_section/works_section.dart';
import 'package:my_portifolio/features/home/ui/widgets/scroll_controller_provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MobileHomePage extends StatefulWidget {
  const MobileHomePage({super.key});

  @override
  State<MobileHomePage> createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> {
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
                  child: const MobileAppBar(),
                ),
                Expanded(
                  child: ScrollablePositionedList.builder(
                    itemScrollController: scrollController,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      switch (index) {
                        case 0:
                          return SizedBox(
                            height: 90.h,
                            child: const MobileHomeSection(),
                          );
                        case 1:
                          return Container(
                            color: AppColors.lightGrey,
                            height: 90.h,
                            child: const MobileSkillsSection(),
                          );
                        case 2:
                          return const MobileWorksSection();
                        case 3:
                          return const MobileContactSection();
                        default:
                          return Container();
                      }
                    },
                  ),
                ),
              ],
            ),
            endDrawer: const MobileDrawer(),
          );
        },
      ),
    );
  }
}
