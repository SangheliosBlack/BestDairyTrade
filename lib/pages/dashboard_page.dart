import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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

  bool show = false;

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
                    height: 300,
                    width: context.height * 2,
                    child: VideoPlayer(_controller))),
          ),
          SizedBox.expand(
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
          SizedBox(
            width: context.width,
            height: context.height,
            child: Column(
              children: [
                Header(funcion: () {
                  setState(() {
                    show = true;
                  });
                }),
                Expanded(
                  child: Row(
                    children: [
                      const AsideSocial(),
                      Expanded(
                        child: SizedBox(
                          height: context.height,
                          child: const AutoRouter(),
                        ),
                      ),
                    ],
                  ),
                ),
                const Footer(),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(show ? 0 : context.width, 0),
            child: Container(
              width: context.width,
              height: context.height,
              color: Themes.primary,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        show = false;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "TU LOGO AQUI",
                                style: GoogleFonts.lato(
                                    color: Colors.white, fontSize: 30),
                              ),
                              Text(
                                "Slogan Aqui",
                                style: GoogleFonts.quicksand(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 1,
                                    color: Colors.white.withOpacity(.5))),
                            child: const Icon(
                              Icons.close,
                              size: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: context.width,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.router.pushNamed("");
                            setState(() {
                              show = false;
                            });
                          },
                          behavior: HitTestBehavior.translucent,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              "BIENVENIDO",
                              style: GoogleFonts.lato(
                                  color: Colors.white, fontSize: 30),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            context.router.pushNamed("nosotros");
                            setState(() {
                              show = false;
                            });
                          },
                          behavior: HitTestBehavior.translucent,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              "NOSOTROS",
                              style: GoogleFonts.lato(
                                  color: Colors.white, fontSize: 30),
                            ),
                          ),
                        ),
                        const SizedBox(height: 60),
                        GestureDetector(
                          onTap: () {
                            context.router.pushNamed("login");
                            setState(() {
                              show = false;
                            });
                          },
                          behavior: HitTestBehavior.translucent,
                          child: Container(
                            width: context.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              child: Text(
                                "INICIAR SESION",
                                style: GoogleFonts.lato(
                                    color: Colors.white, fontSize: 30),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
