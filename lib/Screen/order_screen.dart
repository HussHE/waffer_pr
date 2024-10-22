import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Color(0xFF38A899)),
              onPressed: () {},
            ),
            title: Text(
              'الطلبات',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Zain',
                color: Colors.black,
              ),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TabBar(
                  tabs: [
                    Tab(text: 'تحت الإجراء'),
                    Tab(text: 'المنجز'),
                  ],
                  indicatorColor: Colors.teal,
                  labelStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  unselectedLabelColor: Colors.grey,
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    // Tab 1 - "Under Progress"
                    ListView.builder(
                      padding: const EdgeInsets.all(8.0),
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return ProductOrderItem(
                          title:
                              index == 0 ? "BMW سيارة" : "ثلاجة ال جي 14 قدم",
                          model:
                              index == 0 ? "فئة الخامسة 2012" : "GN-H562HLHL",
                          color: "رصاصي",
                          quantity: "1",
                          company: index == 0 ? "معرض العناس" : "العباد الأول",
                          price: index == 0 ? "30,000 د.ل" : "5,000 د.ل",
                          image: index == 0
                              ? 'assets/images/products/bmw.png'
                              : 'assets/images/products/fridge.png',
                        );
                      },
                    ),
                    // Tab 2 - "Completed"
                    ListView.builder(
                      padding: const EdgeInsets.all(16.0),
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return CompletedOrderItem(
                          title: index == 0 ? "كوشة إمبو" : "ميكروويف",
                          model: index == 0 ? "موديل كلاسيك" : "الماني",
                          color: index == 0 ? "رصاصي" : "ابيض",
                          quantity: "1",
                          company:
                              index == 0 ? "شركة الجهاد الاولي" : "شركة هومر",
                          price: index == 0 ? "34,000 د.ل" : "45.000  د.ل",
                          image: index == 0
                              ? 'assets/images/products/microwaveoven.png'
                              : 'assets/images/products/microHommer.jpeg',
                          status: "تم التسليم",
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'الصفحة الرئيسية',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.wallet), label: 'محفظتي'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.receipt_long), label: 'الطلبات'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'الإعدادات'),
            ],
            selectedItemColor: Colors.teal,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
          ),
        ),
      ),
    );
  }
}

class ProductOrderItem extends StatelessWidget {
  final String title;
  final String model;
  final String color;
  final String quantity;
  final String company;
  final String price;
  final String image;

  const ProductOrderItem({
    super.key,
    required this.title,
    required this.model,
    required this.color,
    required this.quantity,
    required this.company,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.teal.withOpacity(0.3)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image, height: 60, width: 60, fit: BoxFit.contain),
            SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 2),
                  Text("موديل: $model",
                      style: TextStyle(fontSize: 14, color: Colors.black54)),
                  Text("اللون: $color",
                      style: TextStyle(fontSize: 14, color: Colors.black54)),
                  Text("الكمية: $quantity",
                      style: TextStyle(fontSize: 14, color: Colors.black54)),
                  Text("الشركة: $company",
                      style: TextStyle(fontSize: 14, color: Colors.black54)),
                  SizedBox(height: 8),
                  Text(
                    price,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.teal.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "في انتظار الموافقة",
                style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CompletedOrderItem extends StatelessWidget {
  final String title;
  final String model;
  final String color;
  final String quantity;
  final String company;
  final String price;
  final String image;
  final String status;

  const CompletedOrderItem({
    super.key,
    required this.title,
    required this.model,
    required this.color,
    required this.quantity,
    required this.company,
    required this.price,
    required this.image,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.teal.withOpacity(0.3)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
              width: 80,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(image, fit: BoxFit.cover),
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 2),
                  Text("موديل: $model",
                      style: TextStyle(fontSize: 14, color: Colors.black54)),
                  Text("اللون: $color",
                      style: TextStyle(fontSize: 14, color: Colors.black54)),
                  Text("الكمية: $quantity",
                      style: TextStyle(fontSize: 14, color: Colors.black54)),
                  Text("الشركة: $company",
                      style: TextStyle(fontSize: 14, color: Colors.black54)),
                  SizedBox(height: 8),
                  Text(
                    price,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                status,
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
