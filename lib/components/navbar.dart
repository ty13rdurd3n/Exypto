import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';

List<IconData> icon = [
  FontAwesome.feed,
  FontAwesome.search,
  FontAwesome.bell_o,
  FontAwesome.send,
  FontAwesome.podcast,
  FontAwesome.book,
  FontAwesome.clock_o,
  FontAwesome.user_circle,
];

List<String> name = [
  'Feed',
  'Explore',
  'Notifications',
  'Chat',
  'Podcasts',
  'Learn',
  'Timer',
  'Profile',
];

List<bool> selected = [
  true,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  void select(int index) {
    for (int i = 0; i < 8; i++) {
      if (index == i)
        selected[i] = true;
      else
        selected[i] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      child: Column(
        children: name
            .map(
              (e) => NavBarItem(
                name: e,
                icon: icon[name.indexOf(e)],
                isSelected: selected[name.indexOf(e)],
                onTap: () {
                  setState(() {
                    select(name.indexOf(e));
                  });
                },
              ),
            )
            .toList(),
      ),
    );
  }
}

class NavBarItem extends StatefulWidget {
  final String name;
  final IconData icon;
  final Function onTap;
  final bool isSelected;

  NavBarItem({
    required this.icon,
    required this.name,
    required this.onTap,
    required this.isSelected,
  });
  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          setState(() {
            widget.onTap();
          });
        },
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 30.0,
                  ),
                  Icon(
                    widget.icon,
                    size: 22.0,
                    color: widget.isSelected ? Colors.white : Colors.white54,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    widget.name,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      color: widget.isSelected ? Colors.white : Colors.white70,
                    ),
                  ),
                ],
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 250),
                width: 5.0,
                height: 20.0,
                decoration: BoxDecoration(
                  color: widget.isSelected ? Colors.white : Color(0xff282a34),
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: widget.isSelected
                        ? [
                            Colors.cyan,
                            Colors.indigo,
                          ]
                        : [
                            Color(0xff282a34),
                            Color(0xff282a34),
                          ],
                  ),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(10.0),
                    bottom: Radius.circular(10.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
