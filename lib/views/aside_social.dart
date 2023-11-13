import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:skeleton/helpers/extensions.dart';
import 'package:skeleton/themes/main_theme.dart';

class AsideSocial extends StatelessWidget {
  const AsideSocial({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 30,
      child: Container(
        height: context.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SocialButton(icon: FontAwesomeIcons.facebookF),
            SocialButton(icon: FontAwesomeIcons.instagram),
            SocialButton(icon: FontAwesomeIcons.whatsapp),
            SocialButton(icon: FontAwesomeIcons.mailchimp)
          ],
        ),
      ),
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
