import 'package:flutter/material.dart';
import 'package:news/screens/Home/componants/sidebar_container.dart';
import 'package:news/screens/Home/Home_Screen.dart';
import '../../../constants.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SideBarContainer(
      title: "Categories",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Category(
            title: "Artificial Intelligence",
            numOfItem: 3,
            press: () {},
          ),
          Category(
            title: "Augmented reality",
            numOfItem: 4,
            press: () {},
          ),
          Category(
            title: "Development",
            numOfItem: 10,
            press: () {},
          ),
          Category(
            title: "Flutter UI",
            numOfItem: 18,
            press: () {},
          ),
          Category(
            title: "Technology",
            numOfItem: 12,
            press: () {},
          ),
          Category(
            title: "UI/UX Design",
            numOfItem: 2,
            press: () {},
          )
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String title;
  final int numOfItem;
  final VoidCallback press;
  const Category({
    Key key,
    @required this.title,
    @required this.numOfItem,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
      child: TextButton(
        onPressed: () {},
        child: Text.rich(TextSpan(
            text: title,
            style: TextStyle(color: kDarkBlackColor),
            children: [
              TextSpan(
                  text: "($numOfItem)", style: TextStyle(color: kBodyTextColor))
            ])),
      ),
    );
  }
}
