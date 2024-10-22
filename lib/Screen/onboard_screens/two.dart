import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Two extends StatelessWidget {
  const Two({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/onboard/car.png',
          width: 325,
        ),
        SizedBox(height: 5),
        Text(
          "مع وفر اشتري سيارة أحلامك",
          textAlign: TextAlign.center,
          style: GoogleFonts.notoKufiArabic(
              fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Text(
          "علي دفعات وأقصات شهرية اشتري سيارتك \n المفضلة",
          textAlign: TextAlign.center,
          style: GoogleFonts.notoKufiArabic(
              fontSize: 16, fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
