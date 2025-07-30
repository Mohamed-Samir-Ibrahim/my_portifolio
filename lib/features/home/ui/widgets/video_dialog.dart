import 'dart:math';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:my_portifolio/core/theme/app_colors.dart';
import 'package:video_player/video_player.dart';

class VideoDialog extends StatefulWidget {
  final String videoLink;

  const VideoDialog({super.key, required this.videoLink});

  @override
  State<VideoDialog> createState() => _VideoDialogState();
}

class _VideoDialogState extends State<VideoDialog> {
  late VideoPlayerController _controller;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
      widget.videoLink,
    )..initialize().then((_) {
        print(_controller.value.duration);
        setState(() {});
      });

    // _controller = VideoPlayerController.contentUri(
    //   Uri.parse("https://drive.google.com/file/d/1PClqZl8IsNt-Z-OOGLM5dWva1fY-vBMt/view?usp=sharing"),
    // )..in;
    _chewieController = ChewieController(
      videoPlayerController: _controller,
      autoPlay: true,
      looping: true,
      autoInitialize: true,
    );
    print("Video link: ${widget.videoLink}");

    // _chewieController.play();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white.withOpacity(0.3),
      child: Stack(
        children: [
          // Chewie(
          //   // _controller,
          //   controller: _chewieController,
          // ),
          Center(
            child: AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: Chewie(
                controller: _chewieController,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  Widget _videoDialogState() {
    if (_controller.value.isInitialized) {
      return AspectRatio(
        aspectRatio: _controller.value.aspectRatio,
        child: Chewie(
          controller: _chewieController,
        ),
      );
    } else {
      _controller.initialize().then((_) {
        print("Video initialized: ${_controller.value.isInitialized}");
        setState(() {});
      }).catchError((error) {
        text = error.toString();
        setState(() {});
      });

      var randomIndex = Random().nextInt(Colors.primaries.length);
      return Center(
        child: Column(
          children: [
            CircularProgressIndicator(
              color: Colors.primaries[randomIndex],
            ),
            Text(text)
          ],
        ),
      );
    }
  }

  static String text =
      "Video link: https://drive.google.com/file/d/1PClqZl8IsNt-Z-OOGLM5dWva1fY-vBMt/view?usp=sharing";
}
