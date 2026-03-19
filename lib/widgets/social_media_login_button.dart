import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaLoginButton extends StatelessWidget {
  const SocialMediaLoginButton({
    super.key,
    required this.icon,
    required this.buttonColor,
    required this.title,
    required this.onTap,
  });
  final FaIconData icon;
  final String title;
  final VoidCallback onTap;
  final Color buttonColor;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.all(12),
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(icon, size: 20, color: Colors.white),

              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
