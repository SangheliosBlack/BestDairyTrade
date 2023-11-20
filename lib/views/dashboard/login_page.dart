import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skeleton/themes/main_theme.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Hola de nuevo",
          style: GoogleFonts.quicksand(color: Colors.grey, fontSize: 20),
        ),
        Text(
          "INICIAR SESION",
          style: GoogleFonts.anton(color: Themes.secondary, fontSize: 40),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              FontAwesomeIcons.solidUser,
              color: Colors.black,
            ),
            Container(
              width: 230,
              margin: const EdgeInsets.only(left: 10),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Text(
                "Correo electronico",
                style: GoogleFonts.quicksand(color: Colors.grey),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              FontAwesomeIcons.lock,
              color: Colors.black,
            ),
            Container(
              width: 230,
              margin: const EdgeInsets.only(left: 10),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Text(
                "Contraseña",
                style: GoogleFonts.quicksand(color: Colors.grey),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const ContinueButton(),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Olvide mi contraseña",
          style: GoogleFonts.quicksand(color: Colors.grey),
        ),
      ],
    );
  }
}

class ContinueButton extends StatefulWidget {
  const ContinueButton({super.key});

  @override
  State<ContinueButton> createState() => _RegisterButtonState();
}

class _RegisterButtonState extends State<ContinueButton> {
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
            margin: const EdgeInsets.only(left: 35),
            width: 230,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
                color: hover ? Colors.black : Themes.primary,
                borderRadius: BorderRadius.circular(20)),
            duration: const Duration(milliseconds: 100),
            child: Center(
              child: Text(
                "CONTINUAR",
                style: GoogleFonts.quicksand(
                    color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ));
  }
}
