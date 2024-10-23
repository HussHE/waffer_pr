// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:waffer_pr/Screen/customer_home_page.dart';
import 'package:waffer_pr/Screen/login_signup/auth.dart';
import 'package:waffer_pr/Screen/login_signup/forget_password.dart';
import 'package:waffer_pr/Screen/login_signup/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool? rememberMe = false;
  String _email = "", _password = "";
  final _emailControl = TextEditingController();
  final _passControl = TextEditingController();
  final _loginkey = GlobalKey<FormState>();
  bool passShow = true;
  String passTextWarn = 'ادخل الرمز السري';
  String emailTextWarn = 'أدخل بريدك الإلكتروني';

  Future login() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: _email, password: _password);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => CustomerHomePage()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.amber,
            content: Text(
              'لايوجد مستخدم لهذا الاميل',
              style: TextStyle(fontSize: 18),
            )));
      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.amber,
          content: Text(
            'كلمة مرور خاطئة حاول مجددا',
            style: TextStyle(fontSize: 18),
          ),
        ));
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
    _emailControl.dispose();
    _passControl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          stops: [0.1, 0.7],
          colors: [
            Color(0xff16423C),
            Color(0xff38A899),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: SingleChildScrollView(
          child: Form(
            key: _loginkey,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: screenWidth * 0.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(100),
                        ),
                      ),
                    ),
                    Positioned(
                      top: screenWidth * 0.15,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/logo/logo.png',
                            width: screenWidth * 0.35,
                            height: screenWidth * 0.35,
                          ),
                          Text(
                            'وفـــــــــر',
                            style: GoogleFonts.readexPro(
                              fontSize: 32,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            'Waffer',
                            style: GoogleFonts.philosopher(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'سجل الدخول لحسابك',
                        style: GoogleFonts.cairo(
                          color: Color(0xFF16423C),
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'مرحبا بك مجدداً سجل الدخول لتري عروضنا',
                        style: GoogleFonts.cairo(
                          color: Color(0xFF6A9C89),
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return emailTextWarn;
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        controller: _emailControl,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: 'البريد الإلكتروني',
                          prefixIcon: const Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return passTextWarn;
                          }
                          return null;
                        },
                        controller: _passControl,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelText: 'كلمة المرور',
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  passShow = !passShow;
                                });
                              },
                              icon: Icon(passShow
                                  ? Icons.visibility
                                  : Icons.visibility_off)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        obscureText: passShow,
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ForgotPassword()));
                            },
                            child: const Text(
                              'نسيت كلمة المرور؟',
                              style: TextStyle(color: Color(0xFF16423C)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Checkbox(
                                    activeColor: Color(0xff38A899),
                                    value: rememberMe,
                                    onChanged: (value) {
                                      setState(() {
                                        rememberMe = value;
                                      });
                                    }),
                                const Text('تذكرني'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (_loginkey.currentState!.validate()) {
                            setState(() {
                              _email = _emailControl.text;
                              _password = _passControl.text;
                            });
                          }
                          login();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF16423C),
                          padding: const EdgeInsets.only(
                              left: 110, right: 110, top: 15, bottom: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'تسجيل الدخول',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Center(
                        child: Text(
                          'أو سجل عن طريق',
                          style: TextStyle(
                            color: Color(0xFF6A9C89),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      // const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Image.asset(
                                'assets/images/icons/google.png'), // أيقونة جوجل
                            onPressed: () {
                              AuthMethods().signInWithGoogle(context);
                            },
                            iconSize: 20,
                          ),
                          const SizedBox(width: 30),
                          IconButton(
                            icon: Image.asset(
                                'assets/images/icons/FaceBook.png'), // أيقونة فيسبوك
                            onPressed: () {
                              AuthMethods().signInWithFacebook();
                            },
                            iconSize: 20,
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUpScreen()));
                            },
                            child: const Text(
                              'سجل من هنا',
                              style: TextStyle(
                                color: Color(0xff38A899),
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const Text(
                            'ليس لديك حساب؟',
                            style: TextStyle(
                              color: Color(0xFF16423C),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
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
