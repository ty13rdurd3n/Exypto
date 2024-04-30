import 'package:exypto/components/navbar.dart';
import 'package:exypto/components/profiledetails.dart';
import 'package:exypto/components/profileimage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class NavbarSide extends StatelessWidget {
  NavbarSide({required this.navbarcolor});
  final Color navbarcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.2,
      decoration: BoxDecoration(
          color: navbarcolor,
          borderRadius: BorderRadius.circular(0.0),
          border: Border.all(
            color: navbarcolor,
            width: 0.0,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'exypto',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  letterSpacing: 1.0,
                  fontSize: 20,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
            child: ProfileImage(
              issmall: false,
              ismyprofile: false,
              size: 90.0,
              image:
                  'https://i2.wp.com/fangirlish.com/wp-content/uploads/2021/02/160D0F4A-D390-4449-B5AD-79856E95D01A.jpeg?resize=768%2C900&ssl=1',
            ),
          ),
          Text(
            'Josephine Langford',
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
          Text(
            '@itsjosephine',
            style: GoogleFonts.nunito(
              color: Colors.white38,
              fontSize: 13.0,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyProfileDetails('46', '  Posts  '),
              Container(
                height: 30.0,
                width: 1.0,
                color: Colors.white38,
              ),
              MyProfileDetails('2.5k', 'Followers'),
              Container(
                height: 30.0,
                width: 1.0,
                color: Colors.white38,
              ),
              MyProfileDetails('526', 'Following'),
            ],
          ),
          NavBar(),
          Container(
            height: 1.0,
            color: Colors.white38,
            margin: EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 12.0),
          ),
          Container(
            height: 50.0,
            child: NavBarItem(
              icon: FontAwesome.sign_out,
              name: 'Logout',
              isSelected: false,
              onTap: () {
                //TODO:Log Out fucnction
              },
            ),
          ),
        ],
      ),
    );
  }
}
