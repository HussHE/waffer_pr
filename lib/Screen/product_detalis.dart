import 'package:flutter/material.dart';

class ProductDetailsApp extends StatelessWidget {
  const ProductDetailsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
      ),
      home: ProductDetailsScreen(),
    );
  }
}

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 480,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/products/background_product.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // AppBar and Product Details
          Column(
            children: [
              // AppBar
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {},
                ),
                title: Text(
                  'تفاصيل المنتج',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Zain',
                    color: Colors.white,
                  ),
                ),
                centerTitle: true,
              ),
              // Product Details
              Expanded(
                child: ListView(
                  children: [
                    // Product Image Section
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: double.infinity,
                        height: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                                AssetImage('assets/images/products/oven 1.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    // Details Section
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          // Product Title and Rating
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'غـــاز كتــلة مـن 𝐄𝐌𝐁𝐎',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Zain',
                                      color: Color(0xFF16423C),
                                    ),
                                    textAlign: TextAlign.right,
                                  ),
                                  Text(
                                    'الشركة المقسطة: الجهاد الأولى',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black87,
                                        fontFamily: 'Zain'),
                                    textAlign: TextAlign.right,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontFamily: 'Zain'),
                                  ),
                                  Icon(Icons.star, color: Color(0xFFFFD700)),
                                  Text(
                                    '(133 تقييم)',
                                    style: TextStyle(
                                        color: Colors.grey, fontFamily: 'Zain'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 16),

                          // Size and Color Section
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'الحجم: ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontFamily: 'Zain',
                                      ),
                                    ),
                                    TextSpan(
                                      text: '90 سم',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black87,
                                        fontFamily: 'Zain',
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.right,
                              ),
                              Row(
                                children: [
                                  Text(
                                    ': اللون',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Zain'),
                                    textAlign: TextAlign.left,
                                  ),
                                  SizedBox(width: 8),
                                  Container(
                                    width: 24,
                                    height: 24,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Container(
                                    width: 24,
                                    height: 24,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFD9D9D9),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 16),

                          // Description Section
                          Text(
                            ': الوصف',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                              fontFamily: 'Zain',
                            ),
                            textAlign: TextAlign.right,
                          ),
                          SizedBox(height: 8),
                          Text(
                            'غـــاز كتــلة مـن EMBO بمواصفات عاليـة و تصميم أنيق غاز بـ 5 شعلات و بحجـم 90 سم موقد متكامل مزود فـرن يعمل بـ الإشـعال الذاتــي مــتوفـر باللـــون الفضي والاسود.',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black87,
                                fontFamily: 'Zain'),
                            textAlign: TextAlign.right,
                          ),
                          SizedBox(height: 16),

                          // Price and Installment Button
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '500.00 ',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red,
                                        fontFamily: 'Zain',
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'دل',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black87,
                                        fontFamily: 'Zain',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Dialog(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        child: InstallmentScreen(),
                                      );
                                    },
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF16423C),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                ),
                                child: Text(
                                  'اختر مدة التقسيط',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontFamily: 'Zain'),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),

                          // Availability and Quantity Section
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.check_circle,
                                      color: Color(0xFF6A9C89)),
                                  SizedBox(width: 8),
                                  Text(
                                    'متوفر في المخزن',
                                    style: TextStyle(
                                        color: Color(0xFF6A9C89),
                                        fontFamily: 'Zain'),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.remove_circle_outline),
                                    onPressed: () {},
                                  ),
                                  Text(
                                    '1',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Zain'),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.add_circle_outline),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 32),

                          // Add to Cart Button
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  // للتحكم بارتفاع النافذة
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(24)),
                                  ),
                                  builder: (context) => ConfirmationDialog(),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF16423C),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                              ),
                              child: Text(
                                'أضف الطلبية',
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontFamily: 'Zain'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class InstallmentScreen extends StatefulWidget {
  const InstallmentScreen({super.key});

  @override
  State<InstallmentScreen> createState() => _InstallmentScreenState();
}

class _InstallmentScreenState extends State<InstallmentScreen> {
  final List<bool> _isSelected = [
    true,
    false,
    false,
    false
  ]; // Default selected option is '3 أشهر'

  void _setSelectedOption(int index) {
    setState(() {
      for (int i = 0; i < _isSelected.length; i++) {
        _isSelected[i] = i == index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 500,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Installment Duration (مدة التقسيط)
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  ': مدة التقسيط ',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Zain',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Custom Installment Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InstallmentOption(
                    text: ' 3 أشهر ',
                    gradient: LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [Color(0xFF5AFFB2), Color(0xFF16423C)],
                    ),
                    shadow: BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                    isSelected: _isSelected[0],
                    onTap: () {
                      setState(() {
                        _setSelectedOption(0);
                      });
                    },
                  ),
                  InstallmentOption(
                    text: ' 6 أشهر ',
                    gradient: LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [Color(0xFF5AFFB2), Color(0xFF16423C)],
                    ),
                    shadow: BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                    isSelected: _isSelected[1],
                    onTap: () {
                      setState(() {
                        _setSelectedOption(1);
                      });
                    },
                  ),
                  InstallmentOption(
                    text: '  سنة   ',
                    gradient: LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [Color(0xFF5AFFB2), Color(0xFF16423C)],
                    ),
                    shadow: BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                    isSelected: _isSelected[2],
                    onTap: () {
                      setState(() {
                        _setSelectedOption(2);
                      });
                    },
                  ),
                  InstallmentOption(
                    text: '3 سنوات',
                    gradient: LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [Color(0xFF5AFFB2), Color(0xFF16423C)],
                    ),
                    shadow: BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                    isSelected: _isSelected[3],
                    onTap: () {
                      setState(() {
                        _setSelectedOption(3);
                      });
                    },
                  ),
                ],
              ),

              const SizedBox(height: 15),

              // Fields
              buildField(' : القيمة الواجب توفرها في حسابك', '200.00 د.ل'),
              buildField(': الخصم الشهري', '200.00 د.ل'),
              buildField(': السعر النهائي ', '600.00 د.ل'),

              const SizedBox(height: 22),

              // Select Package Button (إختر الباقة)
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF16423C),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Text(
                  'إختر الباقة',
                  style: TextStyle(
                      fontSize: 28, color: Colors.white, fontFamily: 'Zain'),
                ),
              ),
              const SizedBox(height: 22),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build fields with label and value
  Widget buildField(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Zain',
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.right,
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: const Color(0xFFBABABA)),
            ),
            child: Text(
              value,
              style: const TextStyle(
                color: Color(0xFFC13333),
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}

// InstallmentOption widget definition
class InstallmentOption extends StatelessWidget {
  final String text;
  final LinearGradient gradient;
  final bool isSelected;
  final VoidCallback onTap;
  final BoxShadow? shadow;

  const InstallmentOption({
    super.key,
    required this.text,
    required this.gradient,
    required this.isSelected,
    required this.onTap,
    this.shadow,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          gradient: isSelected ? gradient : null,
          color: isSelected ? null : Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: shadow != null ? [shadow!] : [],
          border: isSelected ? null : Border.all(color: Color(0xFFBABABA)),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}

class ConfirmationDialog extends StatelessWidget {
  const ConfirmationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.5, // لملء نصف الشاشة
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // صورة التأكيد
          Image.asset(
            'assets/images/icons/confirmation.png',
            height: 150,
          ),
          SizedBox(height: 16),
          // رسالة التأكيد
          Text(
            'تم تأكيد طلب المنتج في انتظار حجز المنتج والموافقة من الشركة',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Zain',
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: 35),
          // زر الرجوع
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(); // لإغلاق النافذة
            },
            style: ElevatedButton.styleFrom(
              padding:
                  EdgeInsetsDirectional.symmetric(horizontal: 80, vertical: 10),
              backgroundColor: Color(0xFF16423C),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            child: Text(
              'الرجوع للصفحة الرئيسية',
              style: TextStyle(
                  fontSize: 20, color: Colors.white, fontFamily: 'Zain'),
            ),
          ),
        ],
      ),
    );
  }
}
