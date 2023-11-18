import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:skeleton/helpers/extensions.dart';
import 'package:skeleton/themes/main_theme.dart';

class AsideSocial extends StatelessWidget {
  const AsideSocial({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return Container(
          margin: EdgeInsets.only(
              left: sizingInformation.isDesktop ? 95 : 20,
              right: sizingInformation.isDesktop ? 0 : 20),
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
                                              BorderRadius.circular(100),
                                          border: Border.all(
                                              width: 1, color: Colors.black)),
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
                                              BorderRadius.circular(100),
                                          border: Border.all(
                                            width: 1,
                                            color: Colors.black.withOpacity(.2),
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
                                    color: Colors.black.withOpacity(.2)),
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
                                              BorderRadius.circular(100),
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
                        const SizedBox(
                          width: 40,
                        ),
                      ],
                    )
                  : Container(),
            ],
          ),
        );
      },
    );
  }
}

class SocialButton extends StatelessWidget {
  final IconData icon;
  const SocialButton({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration:
          const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      margin: const EdgeInsets.only(bottom: 10),
      child: Icon(
        icon,
        size: 20,
        color: Themes.primary,
      ),
    );
  }
}
