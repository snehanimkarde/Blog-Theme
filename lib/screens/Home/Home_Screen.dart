import 'package:flutter/material.dart';
import 'package:news/constants.dart';
import 'package:news/models/Blog.dart';

import 'componants/Blog_posts.dart';
import 'componants/Recent_posts.dart';
import 'componants/Search.dart';
import 'componants/categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: List.generate(blogPosts.length,
                (index) => BlogPostCard(blog: blogPosts[index])),
          ),
        ),
        SizedBox(
          width: kDefaultPadding,
        ),
        Expanded(
          child: Column(
            children: [
              Search(),
              SizedBox(height: kDefaultPadding),
              Categories(),
              SizedBox(height: kDefaultPadding),
              RecentPosts()
            ],
          ),
        )
      ],
    );
  }
}
