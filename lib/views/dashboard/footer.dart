import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:skeleton/helpers/extensions.dart';
import 'package:skeleton/themes/main_theme.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(color: Colors.black, boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(.3),
            spreadRadius: 10,
            blurRadius: 10,
            offset: const Offset(0, 0))
      ]),
      child: ResponsiveBuilder(
        builder: (BuildContext context, SizingInformation sizingInformation) {
          return Container(
            margin: EdgeInsets.symmetric(
                horizontal: sizingInformation.isDesktop ? 80 : 0),
            width: context.width - (sizingInformation.isDesktop ? 160 : 0),
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
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Text(
                            "BLOG",
                            style: GoogleFonts.lato(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    : Container(),
                const Row(
                  children: [
                    SocialButton(icon: FontAwesomeIcons.facebookF),
                    SocialButton(
                      icon: FontAwesomeIcons.instagram,
                    ),
                    SocialButton(icon: FontAwesomeIcons.tiktok),
                    SocialButton(icon: FontAwesomeIcons.youtube)
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

class SocialButton extends StatefulWidget {
  final IconData icon;
  const SocialButton({super.key, required this.icon});

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  bool hover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      opaque: true,
      onHover: (e) {
        setState(() {
          hover = true;
        });
      },
      onExit: (e) {
        setState(() {
          hover = false;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Icon(
          widget.icon,
          color: hover ? Themes.secondary : Colors.white,
        ),
      ),
    );
  }
}
