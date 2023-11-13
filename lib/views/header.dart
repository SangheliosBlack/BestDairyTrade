import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skeleton/helpers/extensions.dart';
import 'package:skeleton/themes/main_theme.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 71,
      color: Colors.white,
      child: Container(
        width: context.width,
        padding: const EdgeInsets.only(right: 20),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            LinkNav(texto: "BIENVENIDO"),
            LinkNav(texto: "QUIENES SOMOS?"),
            LinkNav(texto: "PRODUCTOS"),
            LinkNav(texto: "AFILIADOS"),
            LinkNav(texto: "CONTACTANOS"),
            Button(
              icon: Icons.search,
            ),
            Button(
              icon: Icons.shopping_bag_outlined,
            ),
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final IconData icon;
  const Button({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Icon(icon, color: Themes.primary));
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
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        duration: const Duration(seconds: 1),
        child: Column(
          children: [
            Text(
              widget.texto,
              style: GoogleFonts.bebasNeue(
                fontSize: 22,
                color: Colors.black,
              ),
              overflow: TextOverflow.visible,
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              children: [
                AnimatedContainer(
                  decoration: BoxDecoration(
                      color: Themes.primary,
                      borderRadius: BorderRadius.circular(10)),
                  height: 3,
                  width: hover
                      ? calculateTextWidth(
                          widget.texto,
                          GoogleFonts.bebasNeue(
                            fontSize: 22,
                            color: Colors.black,
                          ))
                      : 0,
                  duration: const Duration(milliseconds: 300),
                ),
              ],
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

    return textPainter.width;
  }
}
