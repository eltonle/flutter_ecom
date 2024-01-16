import 'package:flutter/material.dart';
import 'package:flutter_1/widgets/appBar_widgets.dart';

class SupplierOrders extends StatelessWidget {
  const SupplierOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const AppBarTitle(title: 'SuppliersOrders'),
        centerTitle: true,
        leading: const AppBarBackButton(),
      ),
    );
  }
}
