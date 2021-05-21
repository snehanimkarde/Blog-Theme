import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'sidebar_container.dart';

class RecentPosts extends StatelessWidget {
  const RecentPosts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SideBarContainer(
      title: "Recent Post",
      child: Column(
        children: [
          RecentPstCard(
            image: "assets/images/recent_1.png",
            title: "Our 'Secret' Formula to Online Workshop",
            press: () {},
          ),
          SizedBox(height: kDefaultPadding),
          RecentPstCard(
            image: "assets/images/recent_2.png",
            title: "Digital Product Innovations from Warsaw with Love",
            press: () {},
          )
        ],
      ),
    );
  }
}

class RecentPstCard extends StatelessWidget {
  final String image, title;
  final VoidCallback press;
  const RecentPstCard({
    Key key,
    @required this.image,
    @required this.title,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: press,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(image),
            ),
            SizedBox(width: kDefaultPadding),
            Expanded(
              flex: 5,
              child: Text(
                title,
                maxLines: 2,
                style: TextStyle(
                    color: kDarkBlackColor,
                    fontFamily: "Raleway",
                    fontWeight: FontWeight.bold,
                    height: 1.5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
