import 'package:flutter/material.dart';
import 'package:flutter_1/widgets/appBar_widgets.dart';

class StoresScreen extends StatelessWidget {
  const StoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const AppBarTitle(title: "Stores"),
        centerTitle: true,
      ),
    );
  }
}
