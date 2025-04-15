import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

/*

B O T T O M N A V B A R

This is the Bottom Navigation Bar from Google. 
It gives a sleek modern look and feel.
You can change up the style to fit your preference,
but I like this modern look with the nice little animations!

Here you can create your buttons that should correspond to the pages.

*/

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF004AAD),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: GNav(
        color: Colors.white,
        activeColor: Colors.white,
        tabBackgroundColor: const Color(0xFF176ABF),
        padding: const EdgeInsets.all(16),
        gap: 8,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.group,
            text: 'Community',
          ),
          GButton(
            icon: Icons.assignment,
            text: 'My Activity',
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
          ),
        ],
      ),
    );
  }
}
