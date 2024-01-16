import 'package:flutter/material.dart';
import 'package:flutter_1/widgets/appBar_widgets.dart';

class ManageProducts extends StatelessWidget {
  const ManageProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const AppBarTitle(title: 'Manage Products'),
        centerTitle: true,
        leading: const AppBarBackButton(),
      ),
    );
  }
}
