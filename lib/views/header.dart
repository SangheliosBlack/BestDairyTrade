import 'package:flag/flag_enum.dart';
import 'package:flag/flag_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:skeleton/helpers/extensions.dart';
import 'package:skeleton/themes/main_theme.dart';

class Header extends StatelessWidget {
  const Header({super.key});
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        if (sizingInformation.isDesktop) {
          return Container(
            margin: const EdgeInsets.only(top: 40, left: 40, right: 40),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "LOGO AQUI",
                  style: GoogleFonts.anton(color: Colors.black, fontSize: 30),
                ),
                Expanded(
                  child: SizedBox(
                    height: 21,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const LinkNav(texto: "BIENVENIDO"),
                        const LinkNav(texto: "NOSOTROS"),
                        const LinkNav(texto: "PROVEEDORES"),
                        const LinkNav(texto: "OPORTUNIDADES"),
                        Flag.fromCode(FlagsCode.MX, height: 15, width: 15)
                      ],
                    ),
                  ),
                ),
                const Row(
                  children: [AccesButton(), RegisterButton()],
                )
              ],
            ),
          );
        } else {
          return Container(
            height: 70,
            width: context.width,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(.2),
                  blurRadius: 10,
                  offset: const Offset(0, 0))
            ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Themes.primary,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ))
              ],
            ),
          );
        }
      },
    );
  }
}

class RegisterButton extends StatefulWidget {
  const RegisterButton({super.key});

  @override
  State<RegisterButton> createState() => _RegisterButtonState();
}

class _RegisterButtonState extends State<RegisterButton> {
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
        child: AnimatedContainer(
          margin: const EdgeInsets.only(left: 25),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
              color: hover ? Colors.black : Themes.primary,
              borderRadius: BorderRadius.circular(20)),
          duration: const Duration(milliseconds: 100),
          child: Text(
            "REGISTRARME",
            style: GoogleFonts.quicksand(
                color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ));
  }
}

class AccesButton extends StatefulWidget {
  const AccesButton({super.key});

  @override
  State<AccesButton> createState() => _AccesButtonState();
}

class _AccesButtonState extends State<AccesButton> {
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
      child: Text(
        "ACCEDER",
        style: GoogleFonts.lato(color: Colors.black),
      ),
    );
  }
}

class LinkNav extends StatefulWidget {
  final String texto;
  const LinkNav({
    super.key,
    required this.texto,
  });
  @override
  State<LinkNav> createState() => _LinkNavState();
}

class _LinkNavState extends State<LinkNav> {
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
      child: AnimatedContainer(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
        duration: const Duration(seconds: 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.texto,
              style: GoogleFonts.lato(
                color: Colors.black,
              ),
              overflow: TextOverflow.visible,
            ),
            const SizedBox(
              height: 2,
            ),
            AnimatedContainer(
              decoration: BoxDecoration(
                  color: Themes.primary,
                  borderRadius: BorderRadius.circular(10)),
              height: 2,
              width: hover
                  ? calculateTextWidth(
                      widget.texto,
                      GoogleFonts.bebasNeue(
                        fontSize: 22,
                        color: Colors.black,
                      ))
                  : 0,
              duration: const Duration(milliseconds: 300),
            )
          ],
        ),
      ),
    );
  }

  double calculateTextWidth(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    return textPainter.width + 8;
  }
}
