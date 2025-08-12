import 'package:my_portifolio/core/entities/project_data.dart';
import 'package:my_portifolio/core/entities/user_data.dart';
import 'package:my_portifolio/gen/assets.gen.dart';

import '../entities/skill_data.dart';

class AppConstants {
  static const String appName = 'Mohamed Portfolio';
  static const String appVersion = '1.0.0';
  static const String cv =
      'https://raw.githubusercontent.com/Mohamed-Samir-Ibrahim/my_cv/main/assets/Mohamed_Samir_Ibrahim_Mostafa_cv.pdf';

  static List<SkillData> skills = [
    SkillData(imagePath: Assets.icons.flutter.path, title: 'Flutter'),
    SkillData(imagePath: Assets.icons.dart.path, title: 'Dart'),
    // SkillData(imagePath: Assets.icons.java.path, title: 'Java'),
    // SkillData(
    //   imagePath: Assets.icons.icons8Typescript50.path,
    //   title: 'TypeScript',
    // ),
    // SkillData(imagePath: Assets.icons.icons8Nestjs48.path, title: 'Nest Js'),
    // SkillData(imagePath: Assets.icons.icons8Python48.path, title: 'Python'),
    // SkillData(imagePath: Assets.icons.icons8Sql48.path, title: 'SQL'),
    // SkillData(imagePath: Assets.icons.icons8Linux48.path, title: 'Linux'),
    SkillData(imagePath: 'assets/icons/icons8-github-50.png', title: 'GitHub'),
    SkillData(imagePath: Assets.icons.icons8Git48.path, title: 'Git'),
  ];

  static List<ProjectData> projects = [
    ProjectData(
      imagePath: 'assets/images/exam_app_launcher_icon.png',
      title: "Online Exam App",
      videoLink: "https://drive.google.com/file/d/16sVHGD9bTuqSJxXXP6WF-rSfUhL3_cRb/view?usp=drive_link",
      description:
          "A Flutter-based mobile application that enables users to take online exams, track their results, and manage their progress efficiently.",
      tools: [
        "Flutter",
        "Easy Localization",
        "Local Database",
        "Apis",
        "Clean Architecture",
        "Cubit",
        "Injectable & GetIt",
      ],
    ),
    ProjectData(
      imagePath: 'assets/images/flower_app_icon.png',
      title: "Flowery E-Commerce App",
      videoLink: "https://drive.google.com/file/d/1THdlk7sDRrGFYMQwluTriuHkqSvA2wk4/view?usp=drive_link",
      description:
          "A beautifully designed, full-featured Flutter e-commerce application tailored for flower shopping. It includes API-based payments, live order tracking, and a companion driver tracking app.",
      tools: [
        "Flutter",
        "Firebase",
        "Easy Localization",
        "Apis",
        "Clean Architecture",
        "Cubit",
        "Maps",
        "Payment",
        "Notifications",
        "Injectable & GetIt",
      ],
    ),
    ProjectData(
      imagePath: 'assets/images/flowery_tracking_icon_launcher.png',
      title: "Flower Tracking App",
      videoLink: "https://drive.google.com/file/d/1n3Z77xbEDwm0IOpIboiHc77gLBztmLvq/view?usp=drive_link",
      description:
          "A modern delivery tracking app built for our Flower E-commerce platform. This app empowers delivery drivers to manage and track orders.",
      tools: [
        "Flutter",
        "Firebase",
        "Localization",
        "Apis",
        "Clean Architecture",
        "Cubit",
        "Maps",
        "Payment",
        "Notifications",
        "Injectable & GetIt",
      ],
    ),
    ProjectData(
      imagePath: 'assets/images/fitness.png',
      title: "Fitness App",
      videoLink: "https://drive.google.com/file/d/1lzTHb12yzGkXMKTz6Hz3k7c-NziNZOYo/view?usp=drive_link",
      description:
          "A Flutter-based fitness application designed to guide users through personalized training, nutrition, and progress tracking using AI-powered features.",
      tools: [
        "Flutter",
        "Firebase",
        "Localization",
        "Local Database",
        "Apis",
        "Clean Architecture",
        "Cubit",
        "Provider",
        "Injectable & GetIt",
      ],
    ),
  ];

  static const UserData userData = UserData(
    name: 'Mohamed Samir',
    email: 'mohamed.samir.ibrahim98@gmail.com',
    phone: '+201067770917',
    description: '''I am a software developer who is energetic and
eager to learn new skills also have a creative
approach to problem-solving and can handle
multiple daily tasks.''',
    githubUrl: 'https://github.com/Mohamed-Samir-Ibrahim',
    linkedinUrl: 'https://www.linkedin.com/in/mohamed-samir-95884819b/',
    //twitterUrl: 'https://x.com/Mohamed39055493',
    roles: [
      "fresh Software Engineer",
      "fresh Flutter Developer",
    ],
    city: 'Hadayek Elkoba, Cairo, Egypt',
  );
}
