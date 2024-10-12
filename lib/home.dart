import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isBangla = false; // Track the current language

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          isBangla ? 'অনলাইন সফট সেল' : 'Online Soft Sell',
          style: const TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent[700],
        actions: [
          Row(
            children: [
              /*Text(
                isBangla ? 'English' : 'বাংলা',
                style: const TextStyle(
                    color: Colors.white, fontSize: 13,), // Add text style if needed
              ),*/
              IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(
                  Icons.translate,
                  color: Colors.white,
                  size: 17,
                ),
                onPressed: () {
                  setState(() {
                    isBangla = !isBangla; // Toggle language
                  });
                },
              ),
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              isBangla ? 'হ্যালো, অ্যাডমিন' : 'Hello, Admin',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2, // 2 items per row
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  buildDashboardCard(
                    isBangla ? 'গ্রাহক' : 'CUSTOMERS',
                    'assets/images/8.png',
                    onTap: () {
                      Fluttertoast.showToast(
                          msg: isBangla ? 'গ্রাহক' : 'Customers');
                    },
                  ),
                  buildDashboardCard(
                    isBangla ? 'সরবরাহকারী' : 'SUPPLIERS',
                    'assets/images/6.png',
                    onTap: () {
                      Fluttertoast.showToast(
                          msg: isBangla ? 'সরবরাহকারী' : 'Suppliers');
                    },
                  ),
                  buildDashboardCard(
                    isBangla ? 'পণ্য' : 'PRODUCTS',
                    'assets/images/4.png',
                    onTap: () {
                      Fluttertoast.showToast(
                          msg: isBangla ? 'পণ্য' : 'Products');
                    },
                  ),
                  buildDashboardCard(
                    'POS',
                    'assets/images/5.png',
                    onTap: () {
                      Fluttertoast.showToast(msg: 'POS');
                    },
                  ),
                  buildDashboardCard(
                    isBangla ? 'খরচ' : 'EXPENSE',
                    'assets/images/7.png',
                    onTap: () {
                      Fluttertoast.showToast(msg: isBangla ? 'খরচ' : 'Expense');
                    },
                  ),
                  buildDashboardCard(
                    isBangla ? 'অর্ডার' : 'ORDERS',
                    'assets/images/9.png',
                    onTap: () {
                      Fluttertoast.showToast(
                          msg: isBangla ? 'অর্ডার' : 'Orders');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Reusable method to create a dashboard card with onTap functionality
  Widget buildDashboardCard(String title, String assetPath,
      {VoidCallback? onTap}) {
    return GestureDetector(
      // Use GestureDetector to handle onTap
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              assetPath,
              height: 100,
              width: 100,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}//Afia- C201245

