import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news/models/Blog.dart';
import '../../../constants.dart';

class BlogPostCard extends StatelessWidget {
  final Blog blog;
  const BlogPostCard({
    Key key,
    @required this.blog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.78,
            child: Image.asset(
              blog.image,
              height: 50,
            ),
          ),
          Container(
            padding: EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Design".toUpperCase(),
                      style: TextStyle(
                          color: kDarkBlackColor,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: kDefaultPadding,
                    ),
                    Text(
                      blog.date,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: Text(blog.title,
                      style: TextStyle(
                          fontSize: 32,
                          fontFamily: "Raleway",
                          color: kDarkBlackColor,
                          height: 1.3,
                          fontWeight: FontWeight.w600)),
                ),
                Text(blogPosts[0].description,
                    maxLines: 4, style: TextStyle(height: 1.5)),
                SizedBox(
                  height: kDefaultPadding,
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                                bottom:
                                    BorderSide(color: kPrimaryColor, width: 3)),
                          ),
                          child: Text(
                            "Read More",
                            style: TextStyle(color: kDarkBlackColor),
                          )),
                    ),
                    Spacer(),
                    IconButton(
                      icon: SvgPicture.asset(
                          "assets/icons/feather_thumbs-up.svg"),
                    ),
                    IconButton(
                      icon: SvgPicture.asset(
                          "assets/icons/feather_message-square.svg"),
                    ),
                    IconButton(
                      icon:
                          SvgPicture.asset("assets/icons/feather_share-2.svg"),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
