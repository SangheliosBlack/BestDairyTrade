import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:skeleton/helpers/extensions.dart';
import 'package:skeleton/themes/main_theme.dart';

@RoutePage()
class DashboardDefaultPage extends StatefulWidget {
  const DashboardDefaultPage({super.key});

  @override
  State<DashboardDefaultPage> createState() => _DashboardDefaultPageState();
}

class _DashboardDefaultPageState extends State<DashboardDefaultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ResponsiveBuilder(
        builder: (BuildContext context, SizingInformation sizingInformation) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Super Market",
                        style: GoogleFonts.pacifico(
                            height: 1,
                            fontSize: sizingInformation.isDesktop ? 48 : 30,
                            color: Colors.black)),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("BEST",
                        style: GoogleFonts.anton(
                            height: 1,
                            color: Themes.secondary,
                            fontSize: sizingInformation.isDesktop ? 120 : 75)),
                    Text("DAIRY DEAL",
                        style: GoogleFonts.anton(
                            height: 1,
                            color: Themes.primary,
                            fontSize: sizingInformation.isDesktop ? 120 : 75)),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: sizingInformation.isDesktop
                          ? 500
                          : context.width - 60,
                      child: Text(
                        "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona",
                        overflow: TextOverflow.visible,
                        style: GoogleFonts.quicksand(color: Colors.grey),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.router.pushNamed("nosotros");
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 30),
                        width: 182,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(80, 107, 44, 1)),
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
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
