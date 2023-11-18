import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skeleton/helpers/extensions.dart';
import 'package:skeleton/themes/main_theme.dart';

@RoutePage()
class NosotrosPage extends StatelessWidget {
  const NosotrosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SizedBox(
          height: context.height,
          width: context.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Proveemos tus recursos",
                  style: GoogleFonts.quicksand(
                      color: Themes.primary, fontSize: 30)),
              Container(
                margin: const EdgeInsets.only(top: 10),
                width: context.width / 2,
                child: Text(
                  "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T.",
                  style: GoogleFonts.quicksand(color: Colors.grey),
                  overflow: TextOverflow.visible,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: 300,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: const Image(
                                      image: AssetImage(
                                          "assets/images/campo.webp"),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    right: 10,
                                    child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 13, vertical: 5),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Text(
                                          "NUEVO",
                                          style: GoogleFonts.quicksand(
                                              color: Colors.black,
                                              fontSize: 15),
                                        )),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Empresa Julio S.A de C.V.",
                                style: GoogleFonts.quicksand(
                                    color: Colors.black, fontSize: 26),
                                overflow: TextOverflow.visible,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Estoy en busca de algun servicio en particular una pequeña descripcion.",
                                overflow: TextOverflow.visible,
                                style:
                                    GoogleFonts.quicksand(color: Colors.grey),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Fecha de publiacion",
                                        style: GoogleFonts.quicksand(
                                            color: Colors.black),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "10/09/2023",
                                        style: GoogleFonts.quicksand(
                                            color: Themes.secondary),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Dias restantes",
                                        style: GoogleFonts.quicksand(
                                            color: Colors.black),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "5",
                                        style: GoogleFonts.quicksand(
                                            color: Themes.secondary),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Themes.primary),
                                      child: const Icon(
                                        Icons.place_outlined,
                                        color: Colors.white,
                                        size: 15,
                                      )),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Lagos de Moreno, JAL",
                                        style: GoogleFonts.quicksand(
                                            color: Colors.black),
                                      ),
                                      Text(
                                        "5 KM",
                                        style: GoogleFonts.quicksand(
                                            color: Colors.grey, fontSize: 12),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "\$ 22,000.00",
                                    style: GoogleFonts.lato(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Themes.primary.withOpacity(.2),
                                  shape: BoxShape.circle),
                              child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: Themes.primary,
                                    shape: BoxShape.circle),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 2,
                                color: Themes.primary,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Algun titulo aqui",
                                style: GoogleFonts.quicksand(
                                    color: Colors.black, fontSize: 20),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Aqui alguna mini descripcion del paso a describir aqui.",
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.quicksand(
                                    color: Themes.secondary),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Themes.primary.withOpacity(.2),
                                    shape: BoxShape.circle),
                                child: Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      color: Themes.primary,
                                      shape: BoxShape.circle),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 2,
                                  color: Themes.primary,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Themes.primary.withOpacity(.2),
                                    shape: BoxShape.circle),
                                child: Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      color: Themes.primary,
                                      shape: BoxShape.circle),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.5),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100)),
                          width: 90,
                          height: 90,
                          child: const Image(
                              image: AssetImage("assets/images/colina.png")),
                        ),
                        const SizedBox(height: 20),
                        Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              "Empresa Julio S.A de C.V",
                              style: GoogleFonts.quicksand(color: Colors.black),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => const Icon(
                                FontAwesomeIcons.solidStar,
                                color: Colors.amber,
                                size: 1,
                              ),
                              ignoreGestures: true,
                              updateOnDrag: false,
                              itemSize: 10,
                              onRatingUpdate: (rating) {},
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "(15 reviews)",
                              style: GoogleFonts.quicksand(color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
