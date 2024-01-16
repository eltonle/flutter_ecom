import 'package:flutter/material.dart';
import 'package:flutter_1/widgets/appBar_widgets.dart';

class CustomerOrders extends StatelessWidget {
  const CustomerOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Customer Orders'),
        centerTitle: true,
        leading: const AppBarBackButton(),
      ),
    );
  }
}
