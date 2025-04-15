import 'package:flutter/material.dart';
import 'components/my_bottom_nav_bar.dart';
// import 'components/my_drawer.dart';
import 'pages/home_page.dart';
import 'pages/profile_page.dart';
import 'pages/activity_page.dart';
import 'pages/community_page.dart';

/*

M A I N P A G E

This is the MainPage. I like to think of the MainPage as the holder of all other pages.
So on this page, we have a bottom navigation bar which the user can tap. This will navigate
the app screen to the any of the ones in the 'pages' folder:

- Home Page
- Shop Page
- Profile Page
- Setting Page

*/

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // This selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  // This method will update our selected index
  // when the user taps on the bottom nav bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages to display
  final List<Widget> _pages = [
    // home page
    const HomePage(),

    // community / leaderboard page
    const CommunityPage(),

    // my activity page
    const ActivityPage(),

    // profile page
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    /*

    UI - I like a more minimal style so that's what I did here, 
    but you can change up the colors and decorate it to your preference

    */
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: _pages[_selectedIndex],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}
