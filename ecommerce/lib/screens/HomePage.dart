import 'package:ecommerce/constants/Colors.dart';
import 'package:flutter/material.dart';

import 'BottomNavPages/DashboardPage.dart';
import 'BottomNavPages/ExplorePage.dart';
import 'BottomNavPages/OrdersPage.dart';
import 'BottomNavPages/ProfilePage.dart';
import 'BottomNavPages/CartPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int myIndex = 1;
  List<Widget> allPages =  [
    DashboardPage(),
    ExplorePage(),
    CartPage(),
    OrdersPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: allPages[myIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: AppColors.primaryColor,
        unselectedItemColor: Colors.black,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: AppColors.accentColor,
            icon: Icon(
              Icons.dashboard,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              backgroundColor: AppColors.accentColor,
              icon: Icon(
                Icons.shop,
              ),
              label: 'Explore'),
          BottomNavigationBarItem(
              backgroundColor: AppColors.accentColor,
              icon: Icon(
                Icons.shopping_cart,
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              backgroundColor: AppColors.accentColor,
              icon: Icon(
                Icons.file_copy,
              ),
              label: 'Orders'),
          BottomNavigationBarItem(
              backgroundColor: AppColors.accentColor,
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile'),
        ],
      ),
    );
  }
}
