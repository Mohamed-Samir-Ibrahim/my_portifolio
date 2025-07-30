class ProjectData {
  String imagePath;
  String title;
  String description;
  String? googlePlayLink;
  String? appStoreLink;
  String? videoLink;
  String? gitHubLink;
  List<String> tools;

  ProjectData({
    required this.imagePath,
    required this.title,
    required this.description,
    this.googlePlayLink,
    this.appStoreLink,
    this.videoLink,
    this.gitHubLink,
    required this.tools,
  });
}
