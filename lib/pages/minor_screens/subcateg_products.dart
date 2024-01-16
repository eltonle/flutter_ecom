// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../widgets/appBar_widgets.dart';

class SubcategProducts extends StatelessWidget {
  final String categName;
  final String subCategName;
  const SubcategProducts({
    Key? key,
    required this.subCategName,
    required this.categName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: const AppBarBackButton(),
        title: AppBarTitle(title: subCategName),
      ),
      body: const Center(
        child: Text('men'),
      ),
    );
  }
}
