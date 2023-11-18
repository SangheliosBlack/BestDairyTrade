import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:skeleton/helpers/extensions.dart';
import 'package:skeleton/themes/main_theme.dart';
import 'package:skeleton/views/aside_social.dart';
import 'package:skeleton/views/dashboard/footer.dart';
import 'package:skeleton/views/header.dart';
import 'package:video_player/video_player.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
      'assets/videos/video.mp4',
    );
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(0);
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                    height: 200,
                    width: context.height,
                    child: VideoPlayer(_controller))),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(.9),
                    Colors.white.withOpacity(.9),
                  ],
                ),
              ),
            ),
          ),
          const Row(
            children: [
              AsideSocial(),
              Expanded(child: AutoRouter()),
            ],
          ),
          const Header(),
          const Footer(),
          Transform.translate(
            offset: Offset(context.width, 0),
            child: Positioned.fill(
              child: Container(
                color: Themes.primary,
              ),
            ),
          )
        ],
      ),
    );
  }
}
