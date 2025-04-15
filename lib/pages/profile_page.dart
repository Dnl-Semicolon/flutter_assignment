import 'package:flutter/material.dart';

import '../models/user.dart';

/*

P R O F I L E P A G E

This is the ProfilePage, which the majority of apps need.

Some ideas:

- This could be a good place for the user to build a reputation system 
like a star rating

- Show followers and following

- Could be a place to show what products/services they are selling/offering

- Could be just a collection of photos and videos like Instagram

*/

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample user data
    final User user = User(
      id: '1',
      name: 'Daniel Tan',
      initials: 'DT',
      helpRequested: 5,
      helpOffered: 12,
      rating: 4.8,
    );
    return Scaffold(

      body: Column(
        children: [
          // Profile header
          Container(
            padding: EdgeInsets.only(top: 80, bottom: 24,),
            color: Theme.of(context).primaryColor,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                  child: Text(
                    user.initials,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  user.name,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Member since March 2025',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildStat('${user.rating}', '★ Rating'),
                    SizedBox(width: 16),
                    _buildStat('${user.helpRequested}', 'Requested'),
                    SizedBox(width: 16),
                    _buildStat('${user.helpOffered}', 'Offered'),
                  ],
                ),
              ],
            ),
          ),

          // Profile options
          Expanded(
            child: ListView(
              children: [
                _buildListItem(context, Icons.settings, 'Account Settings'),
                _buildListItem(context, Icons.verified_user, 'Verification'),
                _buildListItem(context, Icons.notifications, 'Notification Preferences'),
                _buildListItem(context, Icons.privacy_tip, 'Privacy Settings'),
                _buildListItem(context, Icons.help, 'Help & Support'),
                _buildListItem(context, Icons.info, 'About NeighbourAid'),
                _buildListItem(context, Icons.logout, 'Log Out'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStat(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildListItem(BuildContext context, IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Theme.of(context).primaryColor),
      title: Text(title),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {
        // Handle profile option tap
      },
    );
  }
}
/*
ListView(
      children: [
        // top circle profile pic
        Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
            ),
          ),
        ),

        // grid of photos or items
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 10,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) => Container(
            height: 200,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.grey[200],
            ),
          ),
        ),
      ],
    );
*/