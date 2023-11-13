import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skeleton/helpers/extensions.dart';
import 'package:skeleton/themes/main_theme.dart';

@RoutePage()
class DashboardDefaultPage extends StatelessWidget {
  const DashboardDefaultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: context.height,
        width: context.width,
        child: Stack(
          children: [
            Positioned.fill(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Themes.primaryLight,
                    ),
                  ),
                  Container(
                    width: 780,
                    height: context.height,
                    color: Themes.primary,
                    child: Stack(
                      children: [
                        Positioned(
                          left: -10,
                          top: 30,
                          child: Text(
                            "BIENVENIDO",
                            style: GoogleFonts.anton(
                                color: Colors.white.withOpacity(.2),
                                fontSize: 300),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                width: 1,
                                height: context.height,
                                color: Colors.white.withOpacity(.2)),
                            Container(
                                width: 1,
                                height: context.height,
                                color: Colors.white.withOpacity(.2)),
                            Container(
                                width: 1,
                                height: context.height,
                                color: Colors.white.withOpacity(.2)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: -100,
              right: -100,
              child: Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        width: 20,
                        color: const Color.fromRGBO(255, 162, 23, 1))),
              ),
            ),
            Positioned.fill(
              left: 200,
              top: 100,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/svg/haikei.svg',
                    width: 500,
                    height: 500,
                    // Ajusta la imagen SVG para cubrir el espacio disponible
                  ),
                  Center(
                    // Alinea la imagen en el centro del SVG
                    child: Image.asset(
                      "assets/images/frutas.png",
                      width:
                          600, // Ajusta el tamaño de la imagen según lo necesites
                      height:
                          600, // Ajusta el tamaño de la imagen según lo necesites
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Super Market",
                      style: GoogleFonts.pacifico(
                          height: 1, fontSize: 48, color: Colors.black)),
                  const SizedBox(
                    height: 10,
                  ),
                  Text("BEST",
                      style: GoogleFonts.anton(
                          height: 1, color: Themes.secondary, fontSize: 120)),
                  Text("DAIRY DEAL",
                      style: GoogleFonts.anton(
                          height: 1, color: Themes.primary, fontSize: 120)),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 500,
                    child: Text(
                      "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona",
                      overflow: TextOverflow.visible,
                      style: GoogleFonts.quicksand(color: Colors.grey),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    width: 182,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(80, 107, 44, 1)),
                    child: Row(
                      children: [
                        Text(
                          "Mas informacion",
                          style: GoogleFonts.quicksand(color: Colors.white),
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
            ),
            
          ],
        ),
      ),
    );
  }
}


