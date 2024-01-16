import 'package:flutter/material.dart';

class AppBarBackButton extends StatelessWidget {
  const AppBarBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }
}

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style:
          const TextStyle(fontFamily: 'Acma', fontSize: 28, letterSpacing: 1.5),
    );
  }
}
