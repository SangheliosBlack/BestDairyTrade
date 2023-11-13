import 'package:auto_route/auto_route.dart';
import 'package:flag/flag_enum.dart';
import 'package:flag/flag_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:skeleton/helpers/extensions.dart';
import 'package:skeleton/themes/main_theme.dart';
import 'package:video_player/video_player.dart';

@RoutePage()
class SoftnetPage extends StatefulWidget {
  const SoftnetPage({super.key});

  @override
  State<SoftnetPage> createState() => _SoftnetPageState();
}

class _SoftnetPageState extends State<SoftnetPage> {
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
    return Container(
      child: Stack(
        children: [
          SizedBox.expand(
            child: FittedBox(
                fit: BoxFit.cover,
                child: Container(
                    height: 200,
                    width: context.height,
                    child: VideoPlayer(_controller))),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(.8),
                    Colors.white.withOpacity(.8),
                  ],
                ),
              ),
            ),
          ),
          ResponsiveBuilder(
            builder:
                (BuildContext context, SizingInformation sizingInformation) {
              if (sizingInformation.isDesktop) {
                return Container(
                  margin: EdgeInsets.only(top: 40, left: 40, right: 40),
                  child: Row(
                    children: [
                      Text(
                        "LOGO AQUI",
                        style: GoogleFonts.anton(
                            color: Colors.black, fontSize: 30),
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "BIENVENIDO",
                              style: GoogleFonts.lato(color: Colors.black),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              "NOSOTROS",
                              style: GoogleFonts.lato(color: Colors.black),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              "PROVEEDORES",
                              style: GoogleFonts.lato(color: Colors.black),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              "CONTACTO",
                              style: GoogleFonts.lato(color: Colors.black),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Flag.fromCode(FlagsCode.MX, height: 15, width: 15)
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "ACCEDER",
                            style: GoogleFonts.quicksand(color: Colors.black),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 25),
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            decoration: BoxDecoration(
                                color: Themes.primary,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              "REGISTRARME",
                              style: GoogleFonts.quicksand(color: Colors.white),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
              } else {
                return Container(
                  height: 70,
                  width: context.width,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(.2),
                        blurRadius: 10,
                        offset: Offset(0, 0))
                  ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Themes.primary,
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ))
                    ],
                  ),
                );
              }
            },
          ),
          Positioned.fill(
            child: ResponsiveBuilder(
              builder:
                  (BuildContext context, SizingInformation sizingInformation) {
                return Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: sizingInformation.isDesktop ? 95 : 30),
                  height: context.height,
                  child: Row(
                    children: [
                      sizingInformation.isDesktop
                          ? Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: 2,
                                        color: Colors.black.withOpacity(.2),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 2,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 33,
                                              height: 33,
                                              padding: const EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  border: Border.all(
                                                      width: 1,
                                                      color: Colors.black)),
                                              child: Center(
                                                child: Text(
                                                  "1",
                                                  style: GoogleFonts.quicksand(
                                                      color: Colors.black,
                                                      fontSize: 15),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "Catalogo productos",
                                              style: GoogleFonts.quicksand(
                                                  color: Colors.black),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 2,
                                          color: Colors.black.withOpacity(.2),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 33,
                                              height: 33,
                                              padding: const EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  border: Border.all(
                                                    width: 1,
                                                    color: Colors.black
                                                        .withOpacity(.2),
                                                  )),
                                              child: Center(
                                                child: Text(
                                                  "2",
                                                  style: GoogleFonts.quicksand(
                                                      color: Colors.black,
                                                      fontSize: 15),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "Compara provedores",
                                              style: GoogleFonts.quicksand(
                                                  color: Colors.grey),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                            height: 40,
                                            width: 2,
                                            color:
                                                Colors.black.withOpacity(.2)),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 33,
                                              height: 33,
                                              padding: const EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  border: Border.all(
                                                    width: 1,
                                                    color: Colors.grey,
                                                  )),
                                              child: Center(
                                                child: Text(
                                                  "3",
                                                  style: GoogleFonts.quicksand(
                                                      color: Colors.black,
                                                      fontSize: 15),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "Oferta tu producto",
                                              style: GoogleFonts.quicksand(
                                                  color: Colors.grey),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: 2,
                                        color: Colors.black.withOpacity(.2),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                              ],
                            )
                          : Container(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Super Market",
                                  style: GoogleFonts.pacifico(
                                      height: 1,
                                      fontSize:
                                          sizingInformation.isDesktop ? 48 : 30,
                                      color: Colors.black)),
                              const SizedBox(
                                height: 10,
                              ),
                              Text("BEST",
                                  style: GoogleFonts.anton(
                                      height: 1,
                                      color: Themes.secondary,
                                      fontSize: sizingInformation.isDesktop
                                          ? 120
                                          : 75)),
                              Text("DAIRY DEAL",
                                  style: GoogleFonts.anton(
                                      height: 1,
                                      color: Themes.primary,
                                      fontSize: sizingInformation.isDesktop
                                          ? 120
                                          : 75)),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: sizingInformation.isDesktop
                                    ? 500
                                    : context.width - 60,
                                child: Text(
                                  "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona",
                                  overflow: TextOverflow.visible,
                                  style:
                                      GoogleFonts.quicksand(color: Colors.grey),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 30),
                                width: 182,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(80, 107, 44, 1)),
                                child: Row(
                                  children: [
                                    Text(
                                      "Mas informacion",
                                      style: GoogleFonts.quicksand(
                                          color: Colors.white),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Positioned(
              bottom: 40,
              child: ResponsiveBuilder(
                builder: (BuildContext context,
                    SizingInformation sizingInformation) {
                  return Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: sizingInformation.isDesktop ? 80 : 0),
                    width:
                        context.width - (sizingInformation.isDesktop ? 160 : 0),
                    child: Row(
                      mainAxisAlignment: sizingInformation.isDesktop
                          ? MainAxisAlignment.spaceBetween
                          : MainAxisAlignment.center,
                      children: [
                        sizingInformation.isDesktop
                            ? Row(
                                children: [
                                  Text(
                                    "OPORTUNIDADES",
                                    style: GoogleFonts.lato(
                                      color: Themes.secondary,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 80,
                                  ),
                                  Text(
                                    "BLOG",
                                    style: GoogleFonts.lato(
                                      color: Themes.secondary,
                                    ),
                                  ),
                                ],
                              )
                            : Container(),
                        Row(
                          children: [
                            FaIcon(FontAwesomeIcons.facebookF,
                                color: Themes.secondary),
                            SizedBox(
                              width: 40,
                            ),
                            FaIcon(FontAwesomeIcons.instagram,
                                color: Themes.secondary),
                            SizedBox(
                              width: 40,
                            ),
                            FaIcon(FontAwesomeIcons.tiktok,
                                color: Themes.secondary),
                            SizedBox(
                              width: 40,
                            ),
                            FaIcon(FontAwesomeIcons.youtube,
                                color: Themes.secondary),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              )),
        ],
      ),
    );
  }
}
