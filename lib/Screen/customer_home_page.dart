import 'package:flutter/material.dart';

class CustomerHomePage extends StatelessWidget {
  const CustomerHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                // الجزء العلوي مع التحية
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                            "assets/images/profile_pics/customrePic.png"),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "مرحبا، علاوي",
                            style: TextStyle(fontSize: 24),
                          ),
                          Text(
                            "أهلا بك مجددا",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      Icon(Icons.notifications),
                    ],
                  ),
                ),

                // قسم الفئات مع TabBar
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TabBar(
                    tabs: [
                      Tab(text: 'الرئيسية'),
                      Tab(text: 'الفئات'),
                    ],
                    indicatorColor: Colors.teal, // تغيير لون المؤشر
                    labelStyle:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),

                // محتوى TabBarView
                SizedBox(
                  height: 800, // لضبط الارتفاع بناءً على محتوى التبويبات
                  child: TabBarView(
                    children: [
                      // محتوى تبويب الرئيسية
                      Column(
                        children: [
                          // قسم الصورة البانر
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              height: 200,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/ads_photo/Ad.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),

                          SizedBox(height: 20),
                          // النقاط الثلاث
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 10.62,
                                height: 10.62,
                                decoration: BoxDecoration(
                                  color: Color(0xFFC4DAD2),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              SizedBox(width: 7),
                              Container(
                                width: 10.62,
                                height: 10.62,
                                decoration: BoxDecoration(
                                  color: Color(0xFF6A9C89),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              SizedBox(width: 7),
                              Container(
                                width: 10.62,
                                height: 10.62,
                                decoration: BoxDecoration(
                                  color: Color(0xFFC4DAD2),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),

                          // قسم المنتجات
                          GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 4,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 16,
                              crossAxisSpacing: 5,
                              childAspectRatio:
                                  0.85, // تعديل نسبة العرض إلى الارتفاع
                            ),
                            itemBuilder: (context, index) {
                              return ProductItem();
                            },
                          ),
                        ],
                      ),

                      // محتوى تبويب الفئات (نسخة من محتوى الرئيسية)
                      Column(
                        children: [
                          // قسم الصورة البانر
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              height: 200,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/category/CarPicCcategory.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              height: 200,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/category/AthathPicCategory.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              height: 200,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/category/AqarPicCategory.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
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

          // شريط التنقل السفلي
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'الرئيسية',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.wallet), label: 'محفظتي'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.local_offer), label: 'العروض'),
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

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.all(16), // زيادة padding
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.teal.withOpacity(0.5)),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // تغيير موضع الظل
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                "assets/images/products/toyotacorolla.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "سيارة Toyota\nنوع كورولا 2024",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text(
              "120.000 د.ل",
              style: TextStyle(color: Colors.teal, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
