import 'package:exypto/components/post_src.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'post_src.dart';
import 'profileimage.dart';

class FeedPostDetails extends StatelessWidget {
  final int index;
  FeedPostDetails(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      child: Row(
        children: [
          ProfileImage(
            ismyprofile: false,
            image: posts[index].image,
            size: 33.0,
            issmall: true,
          ),
          SizedBox(
            width: 0.0,
          ),
          Text(
            posts[index].name,
            style: GoogleFonts.montserrat(
              color: Colors.white,
            ),
          ),
          Spacer(flex: 2),
          Icon(
            Feather.heart,
            color: Colors.white,
            size: 20.0,
          ),
          Text(
            '  ${posts[index].likes}  ',
            style: GoogleFonts.nunito(
              color: Colors.white,
              fontSize: 12.0,
              fontWeight: FontWeight.w300,
            ),
          ),
          Icon(
            Feather.message_circle,
            color: Colors.white,
            size: 20.0,
          ),
          Text(
            '  ${posts[index].comment}  ',
            style: GoogleFonts.nunito(
              color: Colors.white,
              fontSize: 12.0,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
