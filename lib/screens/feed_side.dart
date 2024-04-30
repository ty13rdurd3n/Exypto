import 'package:exypto/components/top_bar.dart';
import 'package:exypto/components/stories_section.dart';
import 'package:exypto/screens/posts_feed.dart';
import 'package:flutter/material.dart';
import 'package:exypto/main.dart';

class FeedSide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff282a34),
        border: Border.all(
          color: Color(0xff282a34),
          width: 0.0,
        ),
      ),
      child: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: (MyApp.type == deviceType.smallTablet ||
                  MyApp.type == deviceType.phone)
              ? MediaQuery.of(context).size.width
              : MediaQuery.of(context).size.width * 0.8,
          padding: EdgeInsets.symmetric(horizontal: 60.0),
          decoration: BoxDecoration(
            color: Color(0xff3C3F51),
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(10.0),
            ),
            border: Border.all(
              color: Color(0xff282a34),
              width: 0.0,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 15.0,
              ),
              RightSectionTop(),
              Stories(),
              PostsFeed(),
            ],
          ),
        ),
      ),
    );
  }
}
