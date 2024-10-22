import 'package:flutter/material.dart';

class NotficationList extends StatelessWidget {
  const NotficationList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          Notfication(),
        ]),
      ),
    );
  }
}

class Notfication extends StatelessWidget {
  const Notfication({super.key});

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
                left: 25,
                top: 670,
                child: SizedBox(
                  width: 378,
                  height: 82,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 212,
                        top: 11,
                        child: Text(
                          'حالة طلب للمنتج',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF38A899),
                            fontSize: 18,
                            fontFamily: 'Zain',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 36,
                        child: SizedBox(
                          width: 324,
                          child: Text(
                            'تم الموافقة علي طلبك من شركة الجهاد الأولي في انتظار خصم القيمة من حسابك للاستلام.',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF16423C),
                              fontSize: 16,
                              fontFamily: 'Lateef',
                              fontWeight: FontWeight.w300,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 1,
                        top: 15,
                        child: Text(
                          '3 أشهر',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF858585),
                            fontSize: 12,
                            fontFamily: 'Zain',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 328,
                        top: 0,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/icons/Done.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 24,
                top: 551,
                child: SizedBox(
                  width: 379,
                  height: 81,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 203,
                        top: 10,
                        child: Text(
                          'خصم قيمة المنتج',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF38A899),
                            fontSize: 18,
                            fontFamily: 'Zain',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 35,
                        child: SizedBox(
                          width: 325,
                          child: Text(
                            'تم خصم القيمة الشهرية للمنتج في انتظار استلامك لها يرجي إحضار إثبات شخصي عند الذهاب لإكمال عملية الإستلام.',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF16423C),
                              fontSize: 16,
                              fontFamily: 'Lateef',
                              fontWeight: FontWeight.w300,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 2,
                        top: 14,
                        child: Text(
                          '3 أشهر',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF858585),
                            fontSize: 12,
                            fontFamily: 'Zain',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 329,
                        top: 0,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage("assets/images/icons/Wallet.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 28,
                top: 782,
                child: SizedBox(
                  width: 379,
                  height: 81,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 203,
                        top: 10,
                        child: Text(
                          'خصم قيمة المنتج',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF38A899),
                            fontSize: 18,
                            fontFamily: 'Zain',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 35,
                        child: SizedBox(
                          width: 325,
                          child: Text(
                            'تم خصم القيمة الشهرية للمنتج في انتظار استلامك لها يرجي إحضار إثبات شخصي عند الذهاب لإكمال عملية الإستلام.',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF16423C),
                              fontSize: 16,
                              fontFamily: 'Lateef',
                              fontWeight: FontWeight.w300,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 2,
                        top: 14,
                        child: Text(
                          '3 أشهر',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF858585),
                            fontSize: 12,
                            fontFamily: 'Zain',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 329,
                        top: 0,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage("assets/images/icons/Wallet.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 430,
                child: SizedBox(
                  width: 378,
                  height: 82,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 202,
                        top: 11,
                        child: Text(
                          'حالة إستلام للمنتج',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF38A899),
                            fontSize: 18,
                            fontFamily: 'Zain',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 36,
                        child: SizedBox(
                          width: 324,
                          child: Text(
                            'تم استلام طلبك من شركة الجهاد الأولي شاكرين استعمالك لتطبيقنا وإفادتك دائما في عمليات الشراء عبر التقسيط.',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF16423C),
                              fontSize: 16,
                              fontFamily: 'Lateef',
                              fontWeight: FontWeight.w300,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 1,
                        top: 15,
                        child: Text(
                          '3 أشهر',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF858585),
                            fontSize: 12,
                            fontFamily: 'Zain',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 328,
                        top: 0,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/icons/PurchaseOrder.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 24,
                top: 311,
                child: SizedBox(
                  width: 379,
                  height: 81,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 177,
                        top: 10,
                        child: Text(
                          'خصم القيمة الشهرية',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF38A899),
                            fontSize: 18,
                            fontFamily: 'Zain',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 35,
                        child: SizedBox(
                          width: 325,
                          child: Text(
                            'تم خصم القيمة الشهرية للمنتج غاز كوتلة من EMPO لصالح شركة الجهاد الأولى متبقي شهرين لإكمال قيمة القسط.',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF16423C),
                              fontSize: 16,
                              fontFamily: 'Lateef',
                              fontWeight: FontWeight.w300,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 4,
                        top: 14,
                        child: Text(
                          '2 شهر',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF858585),
                            fontSize: 12,
                            fontFamily: 'Zain',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 329,
                        top: 0,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage("assets/images/icons/Wallet.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 329,
                        top: 0,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/icons/PurchaseOrder.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 182,
                child: SizedBox(
                  width: 428,
                  height: 120,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 428,
                          height: 120,
                          decoration: BoxDecoration(color: Color(0xFFF8F6F6)),
                        ),
                      ),
                      Positioned(
                        left: 403,
                        top: 27,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFF0000),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 24,
                        top: 98,
                        child: Text(
                          'وضع علامة “مقروءة”',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF2FB1F2),
                            fontSize: 12,
                            fontFamily: 'Lateef',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 201,
                        top: 19,
                        child: Text(
                          'خصم القيمة الشهرية',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF38A899),
                            fontSize: 18,
                            fontFamily: 'Zain',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 24,
                        top: 44,
                        child: SizedBox(
                          width: 325,
                          child: Text(
                            'تم خصم القيمة الشهرية للمنتج غاز كوتلة من EMPO لصالح شركة الجهاد الأولى متبقي شهر لإكمال قيمة القسط.',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF16423C),
                              fontSize: 16,
                              fontFamily: 'Lateef',
                              fontWeight: FontWeight.w300,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 27,
                        top: 23,
                        child: Text(
                          '1 أشهر',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF858585),
                            fontSize: 12,
                            fontFamily: 'Zain',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 353,
                        top: 9,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/icons/Done.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 353,
                        top: 9,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/icons/Done.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 62,
                child: SizedBox(
                  width: 428,
                  height: 120,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 428,
                          height: 120,
                          decoration: BoxDecoration(color: Color(0xFFF8F6F6)),
                        ),
                      ),
                      Positioned(
                        left: 403,
                        top: 27,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFF0000),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 257,
                        top: 18,
                        child: Text(
                          'إكمال القسط',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF38A899),
                            fontSize: 18,
                            fontFamily: 'Zain',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 24,
                        top: 43,
                        child: SizedBox(
                          width: 325,
                          child: Text(
                            'تهانينا لقد تم إكمال دفع اقساطك للمنتج غاز كتلة من EMPO لشركة الجهاد الأولي بنجاح شكرا لإستعمالك تطبيق وفر.',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF16423C),
                              fontSize: 16,
                              fontFamily: 'Lateef',
                              fontWeight: FontWeight.w300,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 24,
                        top: 22,
                        child: Text(
                          '5 دقائق',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF858585),
                            fontSize: 12,
                            fontFamily: 'Zain',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 353,
                        top: 8,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage("assets/images/icons/Wallet.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 24,
                        top: 98,
                        child: Text(
                          'وضع علامة “مقروءة”',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF2FB1F2),
                            fontSize: 12,
                            fontFamily: 'Lateef',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 662,
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
              Positioned(
                left: 0,
                top: 773,
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
              Positioned(
                left: 0,
                top: 542,
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
              Positioned(
                left: 0,
                top: 422,
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
              Positioned(
                left: 0,
                top: 302,
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
              Positioned(
                left: 0,
                top: 182,
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
              Positioned(
                left: 0,
                top: 62,
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
