import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class One extends StatelessWidget {
  const One({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/onboard/home.png',
          width: 325,
        ),
        const SizedBox(height: 5),
        Text(
          'وفر للمنازل والشقق والأراضي',
          textAlign: TextAlign.center,
          style: GoogleFonts.notoKufiArabic(
              fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Text(
          "  وفر علي نفسك واشتري منزلك او شقتك علي \n أقصات شهرية لمدة معينة",
          textAlign: TextAlign.center,
          style: GoogleFonts.notoKufiArabic(
              fontSize: 16, fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
