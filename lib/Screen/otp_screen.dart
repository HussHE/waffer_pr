import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  Color buttonColor = Color(0xFF16423C); // اللون الطبيعي للزر
  bool isButtonPressed = false;

  void onConfirmButtonPressed(BuildContext context) {
    setState(() {
      buttonColor = Colors.green; // اللون المميز عند الضغط
      isButtonPressed = true;
    });

    // إعادة اللون الطبيعي بعد فترة قصيرة (مثلًا 200 مللي ثانية)
    Future.delayed(Duration(milliseconds: 200), () {
      setState(() {
        buttonColor = Color(0xFF16423C); // العودة إلى اللون الطبيعي
        isButtonPressed = false;
      });

      // عرض القائمة السفلية بعد تأكيد النجاح
      showModalBottomSheet(
        context: context,
        isScrollControlled: true, // يجعل القائمة تأخذ كامل الارتفاع المطلوب
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        builder: (context) {
          return Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min, // يأخذ فقط مساحة المحتوى
              children: [
                SizedBox(height: 16),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Color(0xFF6A9C89),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'تم نجاح التأكيد',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF16423C),
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // إغلاق القائمة السفلية
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF16423C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    minimumSize:
                        Size(double.infinity, 50), // زر بحجم كامل الشاشة
                  ),
                  child: Text(
                    'الذهاب للصفحة الرئيسية',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                SizedBox(height: 16),
              ],
            ),
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          width: screenWidth,
          height: screenHeight,
          child: Stack(
            children: [
              Positioned(
                left: screenWidth * 0.32,
                top: screenHeight * 0.24,
                child: Container(
                  width: screenWidth * 0.35,
                  height: screenWidth * 0.35,
                  decoration: ShapeDecoration(
                    color: Color(0xFFE9EFEC),
                    shape: OvalBorder(),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/images/icons/otpScren.png',
                      width: screenWidth * 0.25,
                      height: screenWidth * 0.25,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: screenWidth * 0.35,
                top: screenHeight * 0.43,
                child: Text(
                  'رمز التأكيد',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: screenWidth * 0.075,
                    fontFamily: 'Zain',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                left: screenWidth * 0.25,
                top: screenHeight * 0.5,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'لقد ارسلنا رمز التاكيد علي \n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: screenWidth * 0.05,
                          fontFamily: 'Zain',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      TextSpan(
                        text: 'waffer@gmail.com',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: screenWidth * 0.05,
                          fontFamily: 'Zain',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              // OTP input fields
              Positioned(
                top: screenHeight * 0.6, // ضبط المسافة العلوية
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(4, (index) {
                    return Row(
                      children: [
                        SizedBox(
                          width: screenWidth * 0.12, // حجم الخانة
                          height: screenHeight * 0.085, // ارتفاع الخانة
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: screenWidth * 0.07, // تناسق حجم النص
                              fontFamily: 'Zain',
                              fontWeight: FontWeight.w700,
                            ),
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: screenHeight *
                                      0.015), // تحسين الحشو الداخلي
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: index == 3
                                      ? Color(0xFF16423C)
                                      : Color(0xFFC4DAD2),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF16423C),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            maxLength: 1,
                            buildCounter: (context,
                                    {int? currentLength,
                                    bool? isFocused,
                                    int? maxLength}) =>
                                null, // إخفاء العداد
                          ),
                        ),
                        if (index != 3) // إضافة مسافة بين الخانات إلا الأخيرة
                          SizedBox(
                              width: screenWidth *
                                  0.04), // تصغير المسافة بين الخانات
                      ],
                    );
                  }),
                ),
              ),
              // Confirmation button
              Positioned(
                left: screenWidth * 0.12,
                top: screenHeight * 0.75,
                child: ElevatedButton(
                  onPressed: () =>
                      onConfirmButtonPressed(context), // تمرير السياق
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor, // استخدام اللون الديناميكي
                    minimumSize: Size(screenWidth * 0.8, screenHeight * 0.07),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: Text(
                    'تأكيد',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.075,
                      fontFamily: 'Zain',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              // Resend code text
              Positioned(
                left: 0,
                right: 0,
                top: screenHeight * 0.85,
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      // قم بتنفيذ إعادة إرسال الرمز عند الضغط
                    },
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'لم يتم الحصول علي الرمز؟ ',
                            style: TextStyle(
                              color: Color(0xFF6A9C89),
                              fontSize: screenWidth * 0.05,
                              fontFamily: 'Zain',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: 'إعادة الإرسال',
                            style: TextStyle(
                              color: Color(0xFF16423C),
                              fontSize: screenWidth * 0.05,
                              fontFamily: 'Zain',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
