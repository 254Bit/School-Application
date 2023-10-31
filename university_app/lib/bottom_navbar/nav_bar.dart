import 'package:flutter/material.dart';
import 'package:university_app/bottom_navbar/nav_model.dart';
import 'package:university_app/home_screen.dart';


class NavBar extends StatelessWidget {
  final int pageIndex;
  final Function(int) onTap;

  const NavBar({
    super.key,
    required this.pageIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: BottomAppBar(
            elevation: 0.0,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                    height: 50,
                    color: Colors.blue,
                    child: Row(
                      children: [
                        navItem(
                          Icons.home_outlined,
                          pageIndex == 0,
                          onTap: () => onTap(1),
                        ),
                        navItem(Icons.message_outlined, pageIndex == 1,
                            onTap: () => onTap(2)),
                        navItem(
                            Icons.notifications_none_outlined, pageIndex == 2,
                            onTap: () => onTap(3)),
                      ],
                    )))));
  }

  Widget navItem(IconData icon, bool select, {Function()? onTap}) {
    return Expanded(
      child: InkWell(
          onTap: onTap,
          child: Icon(
            icon,
            color: select ? Colors.white : Colors.white.withOpacity(0.4),
          )),
    );
  }
}
