import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final double size;
  final String image;
  final bool ismyprofile;
  final bool issmall;
  @override
  ProfileImage(
      {required this.size,
      required this.image,
      required this.ismyprofile,
      required this.issmall});

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10.0,
        right: 10.0,
      ),
      height: size,
      width: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Colors.cyan,
            Colors.indigo,
          ],
        ),
      ),
      child: Center(
        child: Container(
          height: issmall ? size - 2 : size - 4,
          width: issmall ? size - 2 : size - 4,
          decoration: BoxDecoration(
            color: Color(0xff282a34),
            borderRadius: BorderRadius.circular(80.0),
          ),
          child: Center(
            child: Container(
              height: issmall ? size - 6 : size - 15,
              width: issmall ? size - 6 : size - 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80.0),
                image: DecorationImage(
                  image: NetworkImage(
                    image,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: ismyprofile
                    ? BoxDecoration(
                        color: Colors.blue.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(80.0),
                      )
                    : BoxDecoration(),
                child: ismyprofile
                    ? Icon(
                        Icons.add,
                        color: Colors.white,
                      )
                    : Text(''),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
