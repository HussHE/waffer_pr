import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Three extends StatelessWidget {
  const Three({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/onboard/stuff.png',
          width: 325,
        ),
        SizedBox(height: 5),
        Text(
          "مايخص منزلك تجده هنا",
          textAlign: TextAlign.center,
          style: GoogleFonts.notoKufiArabic(
              fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Text(
          "ثلاجتك، مكيفك، تلفزيونك بالتقصيط أثث منزلك",
          textAlign: TextAlign.center,
          style: GoogleFonts.notoKufiArabic(
              fontSize: 16, fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
