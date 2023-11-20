import 'package:auto_route/auto_route.dart';
import 'package:flag/flag_enum.dart';
import 'package:flag/flag_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:skeleton/helpers/extensions.dart';
import 'package:skeleton/themes/main_theme.dart';

class Header extends StatelessWidget {
  final void Function()? funcion;
  const Header({super.key, required this.funcion});
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        if (sizingInformation.isDesktop) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    bottom: BorderSide(
                        color: Colors.grey.withOpacity(.1), width: 1))),
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
                        const LinkNav(
                          texto: "BIENVENIDO",
                          route: '',
                        ),
                        const LinkNav(
                          texto: "NOSOTROS",
                          route: 'nosotros',
                        ),
                        Flag.fromCode(FlagsCode.MX, height: 15, width: 15)
                      ],
                    ),
                  ),
                ),
                const Row(
                  children: [RegisterButton()],
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
                GestureDetector(
                  onTap: funcion,
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Themes.primary,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      )),
                )
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
        child: GestureDetector(
          onTap: () {
            context.router.pushNamed("login");
          },
          behavior: HitTestBehavior.translucent,
          child: AnimatedContainer(
            margin: const EdgeInsets.only(left: 25),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
                color: hover ? Colors.black : Themes.primary,
                borderRadius: BorderRadius.circular(20)),
            duration: const Duration(milliseconds: 100),
            child: Text(
              "ACCEDER",
              style: GoogleFonts.quicksand(
                  color: Colors.white, fontWeight: FontWeight.w600),
            ),
          ),
        ));
  }
}

class LinkNav extends StatefulWidget {
  final String route;
  final String texto;
  const LinkNav({
    super.key,
    required this.texto,
    required this.route,
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
      hitTestBehavior: HitTestBehavior.translucent,
      child: GestureDetector(
        onTap: () {
          context.router.pushNamed(widget.route);
        },
        behavior: HitTestBehavior.translucent,
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
