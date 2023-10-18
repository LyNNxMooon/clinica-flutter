import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNav extends StatelessWidget {
  final Function(int)? onTapChange;

  const BottomNav(this.onTapChange, {super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 35),
      child: GNav(
          onTabChange: (value) => onTapChange!(value),
          mainAxisAlignment: MainAxisAlignment.center,
          color: Colors.black,
          activeColor: Colors.black,
          tabActiveBorder: Border.all(color: Colors.black),
          tabs: const [
            GButton(
              iconColor: Colors.black,
              textColor: Colors.black,
              icon: Icons.home,
              text: 'Home',
            ),
          ]),
    );
  }
}
