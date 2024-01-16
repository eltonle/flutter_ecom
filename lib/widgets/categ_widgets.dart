import 'package:flutter/material.dart';

import '../pages/minor_screens/subcateg_products.dart';

class SliderBar extends StatelessWidget {
  final String mainCategName;
  const SliderBar({
    Key? key,
    required this.mainCategName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width * 0.05,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.brown.withOpacity(0.2),
            borderRadius: BorderRadius.circular(50),
          ),
          child: RotatedBox(
            quarterTurns: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                mainCategName == 'beauty'
                    ? const Text('')
                    : const Text(
                        '<<',
                        style: style,
                      ),
                Text(mainCategName.toUpperCase(), style: style),
                mainCategName == 'men'
                    ? const Text('')
                    : const Text(
                        '>>',
                        style: style,
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

const style = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.brown,
    letterSpacing: 10);

class SubCategModel extends StatelessWidget {
  final String mainCategName;
  final String subCategName;
  final String assetName;
  final String subCategLabel;
  const SubCategModel({
    Key? key,
    required this.mainCategName,
    required this.subCategName,
    required this.assetName,
    required this.subCategLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SubcategProducts(
                categName: mainCategName, subCategName: subCategLabel),
          ),
        );
      },
      child: Column(
        children: [
          SizedBox(
            height: 70,
            width: 70,
            child: Image(
              image: AssetImage(assetName),
            ),
          ),
          Text(
            subCategLabel,
            style: const TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}

class CategHeaderLabel extends StatelessWidget {
  final String headerLabel;
  const CategHeaderLabel({super.key, required this.headerLabel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Text(
        headerLabel,
        style: const TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.5,
        ),
      ),
    );
  }
}
