import 'package:flutter/material.dart';
import 'package:flutter_1/pages/dashboard_components/balance.dart';
import 'package:flutter_1/pages/dashboard_components/edit_profile.dart';
import 'package:flutter_1/pages/dashboard_components/manage_products.dart';
import 'package:flutter_1/pages/dashboard_components/my_store.dart';
import 'package:flutter_1/pages/dashboard_components/suppl_orders.dart';
import 'package:flutter_1/pages/dashboard_components/suppl_statics.dart';
import 'package:flutter_1/widgets/appBar_widgets.dart';

List<String> label = [
  'my store',
  'orders',
  'edit profile',
  'manage products',
  'balance',
  'statics',
];

List<IconData> icons = [
  Icons.store,
  Icons.shop_2_outlined,
  Icons.edit,
  Icons.settings,
  Icons.attach_money,
  Icons.show_chart
];

List<Widget> pages = const [
  MyStore(),
  SupplierOrders(),
  EditProfile(),
  ManageProducts(),
  BalanceScreen(),
  SuppliersStatics(),
];

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const AppBarTitle(title: 'Dashboard'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/welcome_screen');
            },
            icon: const Icon(
              Icons.logout,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: GridView.count(
          mainAxisSpacing: 50,
          crossAxisSpacing: 50,
          crossAxisCount: 2,
          children: List.generate(6, (index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => pages[index],
                  ),
                );
              },
              child: Card(
                elevation: 20,
                shadowColor: Colors.purpleAccent.shade200,
                color: Colors.blueGrey.withOpacity(0.7),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      icons[index],
                      size: 50,
                      color: Colors.yellowAccent,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        label[index].toUpperCase(),
                        style: const TextStyle(
                            fontSize: 19,
                            color: Colors.yellowAccent,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 2,
                            fontFamily: 'Acme'),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
