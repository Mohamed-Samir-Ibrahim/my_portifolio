import 'package:flutter/material.dart';
import 'package:my_portifolio/features/home/ui/widgets/mobile/mobile_app_bar_button.dart';
import 'package:my_portifolio/features/home/ui/widgets/mobile/mobile_cv_button.dart';
import 'package:my_portifolio/features/home/ui/widgets/scroll_controller_provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var scroll = ScrollControllerProvider.of(context)!.itemScrollController;
    return Drawer(
      shape: const RoundedRectangleBorder(),
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SizedBox(height: 32),
            MobileAppBarButton(
              text: 'Home',
              onTap: () {
                scroll.scrollTo(
                  index: 0,
                  duration: const Duration(milliseconds: 450),
                );
                Scaffold.of(context).closeEndDrawer();
              },
            ),
            const SizedBox(height: 32),
            MobileAppBarButton(
              text: 'Skills',
              onTap: () {
                scroll.scrollTo(
                  index: 1,
                  duration: const Duration(milliseconds: 450),
                );
                Scaffold.of(context).closeEndDrawer();
              },
            ),
            const SizedBox(height: 32),
            MobileAppBarButton(
              text: 'Projects',
              onTap: () {
                scroll.scrollTo(
                  index: 2,
                  duration: const Duration(milliseconds: 450),
                );
                Scaffold.of(context).closeEndDrawer();
              },
            ),
            const SizedBox(height: 32),
            MobileAppBarButton(
              text: 'Contact Me',
              onTap: () {
                scroll.scrollTo(
                  index: 3,
                  duration: const Duration(milliseconds: 450),
                );
                Scaffold.of(context).closeEndDrawer();
              },
            ),
            const SizedBox(height: 32),
            const Divider(),
            const SizedBox(height: 32),
            SizedBox(
              width: 50.w,
              child: const MobileViewCvButton(),
            ),
          ],
        ),
      ),
    );
  }
}
