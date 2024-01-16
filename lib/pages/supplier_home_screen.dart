import 'package:flutter/material.dart';
import 'package:flutter_1/pages/category_screen.dart';
import 'package:flutter_1/pages/dashboard_screen.dart';
import 'package:flutter_1/pages/home_screen.dart';
import 'package:flutter_1/pages/stores.dart';

class SupplierHomeScreen extends StatefulWidget {
  const SupplierHomeScreen({super.key});

  @override
  State<SupplierHomeScreen> createState() => _SupplierHomeScreenState();
}

class _SupplierHomeScreenState extends State<SupplierHomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _tabs = const [
    HomeScreen(),
    CategoryScreen(),
    StoresScreen(),
    DashboardScreen(),
    Center(
      child: Text('Upload'),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        elevation: 0,
        selectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop_sharp),
            label: "Store",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: "Dashboard",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.upload),
            label: "Upload",
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
