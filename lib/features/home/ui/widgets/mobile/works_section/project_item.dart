import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:my_portifolio/core/entities/project_data.dart';
import 'package:my_portifolio/core/extensions/context_ext.dart';
import 'package:my_portifolio/core/theme/app_colors.dart';
import 'package:my_portifolio/features/home/ui/widgets/video_dialog.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileProjectItem extends StatefulWidget {
  final ProjectData projectData;

  const MobileProjectItem({super.key, required this.projectData});

  @override
  State<MobileProjectItem> createState() => _MobileProjectItemState();
}

class _MobileProjectItemState extends State<MobileProjectItem> {
  bool isHover = false;
  double iconSize = 35;
  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      scale: isHover ? 1.03 : 1,
      duration: const Duration(milliseconds: 350),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (event) {
          isHover = true;
          setState(() {});
        },
        onExit: (event) {
          isHover = false;
          setState(() {});
        },
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 1,
                offset: const Offset(0, 4),
              ),
            ],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50.h,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.lightGrey,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Image.asset(widget.projectData.imagePath),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 16),
                    Text(
                      widget.projectData.title,
                      style: context.textTheme.bodyMedium?.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkBlue,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      widget.projectData.description,
                      style: context.textTheme.bodyMedium?.copyWith(
                        fontSize: 14.sp,
                        color: AppColors.darkBlue,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Wrap(
                      spacing: 8.0,
                      runSpacing: 8.0,
                      children: widget.projectData.tools
                          .map(
                            (tag) => ToolItem(tag: tag),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Wrap(
                alignment: WrapAlignment.start,
                // spacing: 16.0,
                runSpacing: 16.0,
                children: [
                  Visibility(
                    visible: widget.projectData.appStoreLink != null,
                    child: IconButton(
                      onPressed: () {
                        launchUrl(Uri.parse(widget.projectData.appStoreLink!));
                      },
                      icon: Icon(
                        Ionicons.logo_apple,
                        color: AppColors.darkBlue,
                        size: iconSize,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: widget.projectData.googlePlayLink != null,
                    child: IconButton(
                      onPressed: () {
                        launchUrl(
                            Uri.parse(widget.projectData.googlePlayLink!));
                      },
                      icon: Icon(
                        Ionicons.logo_google_playstore,
                        color: AppColors.darkBlue,
                        size: iconSize,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: widget.projectData.gitHubLink != null,
                    child: IconButton(
                      onPressed: () {
                        launchUrl(Uri.parse(widget.projectData.gitHubLink!));
                      },
                      icon: Icon(
                        Ionicons.logo_github,
                        color: AppColors.darkBlue,
                        size: iconSize,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: widget.projectData.videoLink != null,
                    child: IconButton(
                      onPressed: () {
                        _launchUrl(widget.projectData.videoLink!);
                        // showDialog(
                        //   context: context,
                        //   builder: (context) {
                        //     return VideoDialog(
                        //       videoLink: widget.projectData.videoLink!,
                        //     );
                        //   },
                        // );
                      },
                      icon: Icon(
                        Ionicons.videocam,
                        color: AppColors.darkBlue,
                        size: iconSize,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}

class ToolItem extends StatelessWidget {
  final String tag;

  const ToolItem({
    super.key,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 8.0,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(
          20.0,
        ),
      ),
      child: Text(
        tag,
        style: TextStyle(
          color: Colors.grey[800], // Text color
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
