import 'package:flutter/material.dart';

class ProjectsLinks extends StatelessWidget {
  const ProjectsLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Project Links",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 8),
      ],
    );
  }
}
