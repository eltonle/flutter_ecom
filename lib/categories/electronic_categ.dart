// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_1/utilities/categ_list.dart';

import '../widgets/categ_widgets.dart';

class ElectronicsCategory extends StatelessWidget {
  const ElectronicsCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 0.75,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CategHeaderLabel(headerLabel: "Electronics"),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.68,
                    child: GridView.count(
                      mainAxisSpacing: 70,
                      // crossAxisSpacing: 2,
                      crossAxisCount: 3,
                      children: List.generate(electronics.length, (index) {
                        return SubCategModel(
                          mainCategName: 'electronics',
                          subCategName: electronics[index],
                          assetName: 'images/electronics/electronics$index.jpg',
                          subCategLabel: electronics[index],
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            right: 0,
            child: SliderBar(mainCategName: 'electronics'),
          ),
        ],
      ),
    );
  }
}
