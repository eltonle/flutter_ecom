import 'package:flutter/material.dart';
import 'package:flutter_1/widgets/appBar_widgets.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Wishlist Screen'),
        centerTitle: true,
        leading: const AppBarBackButton(),
      ),
    );
  }
}
