// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_1/categories/accessories_categ.dart';
import 'package:flutter_1/categories/bags_categ.dart';
import 'package:flutter_1/categories/beauty_categ.dart';
import 'package:flutter_1/categories/electronic_categ.dart';
import 'package:flutter_1/categories/home_garden_categ.dart';
import 'package:flutter_1/categories/kids_categ.dart';
import 'package:flutter_1/categories/men_categ.dart';
import 'package:flutter_1/categories/shoes_categ.dart';
import 'package:flutter_1/categories/women_categ.dart';
import 'package:flutter_1/widgets/fake_search.dart';

List<ItemData> items = [
  ItemData(label: "Men"),
  ItemData(label: "Women"),
  ItemData(label: "Shoes"),
  ItemData(label: "Bags"),
  ItemData(label: "Electronics"),
  ItemData(label: "Accessories"),
  ItemData(label: "home & gardem"),
  ItemData(label: "Kids"),
  ItemData(label: "Beauty"),
];

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final PageController _pageController = PageController();

  @override
  void initState() {
    setState(() {
      for (var element in items) {
        element.isSelected = false;
      }
      items[0].isSelected = true;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const FakeSearch(),
      ),
      body: Stack(
        children: [
          Positioned(bottom: 0, left: 0, child: sideNavigator(size)),
          Positioned(bottom: 0, right: 0, child: categView(size)),
        ],
      ),
    );
  }

  Widget sideNavigator(Size size) {
    return SizedBox(
      width: size.width * 0.2,
      height: size.height * 0.8,
      child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                _pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.bounceInOut,
                );
              },
              child: Container(
                color: items[index].isSelected == true
                    ? Colors.white
                    : Colors.grey.shade300,
                height: 100,
                child: Center(
                  child: Text(items[index].label),
                ),
              ),
            );
          }),
    );
  }

  Widget categView(Size size) {
    return Container(
        width: size.width * 0.8,
        height: size.height * 0.8,
        color: const Color(0xFFFFFFFF),
        child: PageView(
          controller: _pageController,
          onPageChanged: (value) {
            setState(() {
              for (var element in items) {
                element.isSelected = false;
              }
              items[value].isSelected = true;
            });
          },
          scrollDirection: Axis.vertical,
          children: const [
            MenCategory(),
            WomenCategory(),
            ShoesCategory(),
            BagsCategory(),
            ElectronicsCategory(),
            AccessoriesCategory(),
            HomeGardenCategory(),
            KidsCategory(),
            BeautyCategory(),
          ],
        ));
  }
}

class ItemData {
  final String label;
  bool isSelected;
  ItemData({
    required this.label,
    this.isSelected = false,
  });
}
