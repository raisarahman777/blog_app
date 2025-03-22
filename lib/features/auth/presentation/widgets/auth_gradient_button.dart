import 'package:blog_app/core/theme/app_palette.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  final String displayText;
  final VoidCallback onPressed;
  const AuthGradientButton({
    super.key,
    required this.displayText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppPalette.gradient1, AppPalette.gradient2],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(450, 50),
          backgroundColor: AppPalette.transparentColor,
          shadowColor: AppPalette.transparentColor,
        ),
        child: Text(
          displayText,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
