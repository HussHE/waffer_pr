import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:waffer_pr/Screen/login_signup/signup.dart';
import 'package:waffer_pr/Screen/login_signup/login.dart';
import 'package:waffer_pr/Screen/onboard_screens/one.dart';
import 'package:waffer_pr/Screen/onboard_screens/three.dart';
import 'package:waffer_pr/Screen/onboard_screens/two.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final PageController _controller = PageController();
  int index = 0;
  String login = "تسجيل دخول";
  String signup = "انشاء حساب";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              child: PageView(
            onPageChanged: (value) {
              setState(() {
                index = value;
              });
            },
            controller: _controller,
            children: [
              const One(),
              const Two(),
              const Three(),
            ],
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIndicator(active: index == 0),
              const SizedBox(width: 5),
              CustomIndicator(active: index == 1),
              const SizedBox(width: 5),
              CustomIndicator(active: index == 2),
            ],
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: index == 2
                      ? () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()))
                      : () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen())),
                  child: Text(
                    index == 2 ? signup : "تخطي",
                    style: GoogleFonts.notoKufiArabic(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    index < 2
                        ? _controller.animateToPage(index + 1,
                            duration: const Duration(milliseconds: 250),
                            curve: Curves.linear)
                        : Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                          );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: const Color(0xff16423C),
                        borderRadius: BorderRadius.circular(30)),
                    child: Text(
                      index == 2 ? login : "التالي",
                      style: GoogleFonts.notoKufiArabic(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
        ],
      )),
    );
  }
}

class CustomIndicator extends StatelessWidget {
  final bool active;
  const CustomIndicator({super.key, required this.active});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: active ? const Color(0xff16423C) : const Color(0xffC4DAD2),
      ),
      width: active ? 30 : 10,
      height: 10,
    );
  }
}
