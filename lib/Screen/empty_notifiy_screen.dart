import 'package:flutter/material.dart';

// Generated by: https://www.figma.com/community/plugin/842128343887142055/
class EmptyNotifiyScreen extends StatelessWidget {
  const EmptyNotifiyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          Iphone14Plus17(),
        ]),
      ),
    );
  }
}

class Iphone14Plus17 extends StatelessWidget {
  const Iphone14Plus17({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 428,
          height: 926,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 33,
                top: 212,
                child: SizedBox(
                  width: 348,
                  height: 348,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 34,
                        top: 48,
                        child: Container(
                          width: 284,
                          height: 284,
                          decoration: ShapeDecoration(
                            gradient: RadialGradient(
                              center: Alignment(0.16, 1.12),
                              radius: 0.39,
                              colors: [Color(0xFF5AFFB2), Color(0xFF38A899)],
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 348,
                          height: 348,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/icons/EmptyNotifiy.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 107,
                top: 571,
                child: Text(
                  'لا توجد اشعارات حاليا',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF16423C),
                    fontSize: 24,
                    fontFamily: 'Almarai',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: Color(0xFF38A899)),
                  onPressed: () {},
                ),
                title: Text(
                  'الأشعارات',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Zain',
                    color: Colors.black,
                  ),
                ),
                centerTitle: true,
              ),
              Positioned(
                left: 0,
                top: 54,
                child: Container(
                  width: 428,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFC4DAD2),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}