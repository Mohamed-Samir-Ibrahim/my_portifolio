import 'package:flutter/material.dart';
import 'package:my_portifolio/core/entities/project_data.dart';
import 'package:my_portifolio/core/extensions/context_ext.dart';
import 'package:my_portifolio/core/theme/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../../gen/assets.gen.dart';
import '../../video_dialog.dart';
import 'link_item.dart';

class ProjectItem extends StatefulWidget {
  final ProjectData projectData;

  const ProjectItem({super.key, required this.projectData});

  @override
  State<ProjectItem> createState() => _ProjectItemState();
}

class _ProjectItemState extends State<ProjectItem> {
  bool isHover = false;
  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  void initState() {
    super.initState();

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
          height: 60.h,
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
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 60.h,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image.asset(
                    // "assets/images/dushka.png"
                    widget.projectData.imagePath,
                  ),
                ),
              ),
              const SizedBox(width: 32),
              Expanded(
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 16),
                      Text(
                        widget.projectData.title,
                        style: context.textTheme.bodyMedium?.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.darkBlue,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        widget.projectData.description,
                        style: context.textTheme.bodyMedium?.copyWith(
                          fontSize: 12.sp,
                          color: AppColors.darkBlue,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Wrap(
                        spacing: 8.0,
                        runSpacing: 8.0,
                        children: widget.projectData.tools
                            .map(
                              (tag) => Container(
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
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          if (widget.projectData.appStoreLink != null) ...[
                            GestureDetector(
                              onTap: () {
                                launchUrl(
                                  Uri.parse(
                                    widget.projectData.appStoreLink!,
                                  ),
                                );
                              },
                              child: LinkItem(
                                title: "App Store",
                                height: 40,
                                link: widget.projectData.appStoreLink!,
                                image: Assets.icons.icons8AppStore50.path,
                              ),
                            ),
                            const SizedBox(width: 16),
                          ],
                          if (widget.projectData.googlePlayLink != null) ...[
                            GestureDetector(
                              onTap: () {
                                launchUrl(
                                  Uri.parse(
                                    widget.projectData.googlePlayLink!,
                                  ),
                                );
                              },
                              child: LinkItem(
                                title: "play Store",
                                link: widget.projectData.googlePlayLink!,
                                image:
                                    Assets.icons.icons8GooglePlayStore50.path,
                              ),
                            ),
                            const SizedBox(width: 16),
                          ],
                          if (widget.projectData.gitHubLink != null) ...[
                            GestureDetector(
                              onTap: () {
                                launchUrl(
                                  Uri.parse(
                                    widget.projectData.gitHubLink!,
                                  ),
                                );
                              },
                              child: LinkItem(
                                title: "Git Hub",
                                link: widget.projectData.gitHubLink!,
                                image: Assets.icons.icons8Github50.path,
                              ),
                            ),
                            const SizedBox(width: 16),
                          ],
                          if (widget.projectData.videoLink != null) ...[
                            GestureDetector(
                              onTap: () {
                                _launchUrl(widget.projectData.videoLink!);
                                // showDialog(
                                //   context: context,
                                //   barrierDismissible: true,
                                //   builder: (context) {
                                //     return VideoDialog(
                                //       videoLink: widget.projectData.videoLink!,
                                //     );
                                //   },
                                // );
                              },
                              child: LinkItem(
                                title: "Video",
                                link: widget.projectData.videoLink!,
                                image: Assets.icons.icons8Video48.path,
                              ),
                            ),
                            const SizedBox(width: 16),
                          ],
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 32),
            ],
          ),
        ),
      ),
    );
  }

  @override
  dispose() {
    super.dispose();
  }
}