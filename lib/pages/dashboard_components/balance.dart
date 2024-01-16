import 'package:flutter/material.dart';
import 'package:flutter_1/widgets/appBar_widgets.dart';

class BalanceScreen extends StatelessWidget {
  const BalanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Balance'),
        centerTitle: true,
        leading: const AppBarBackButton(),
      ),
    );
  }
}
