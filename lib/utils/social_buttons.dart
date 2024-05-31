import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialLoginButtons extends StatelessWidget {
  final Function() onGoogleClick;

  const SocialLoginButtons({super.key, required this.onGoogleClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: const BorderSide(color: Colors.black45, width: 0.8)),
        child: InkWell(
          onTap: onGoogleClick,
          borderRadius: BorderRadius.circular(5),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/icons/google.svg"),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  "Google",
                  style: TextStyle(
                    color: Color(0xFF666666),
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    fontFamily: 'POPPINS',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
