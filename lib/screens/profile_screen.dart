import 'package:flutter/material.dart';
import '/constant/constant.dart';
import '../components/profile_image.dart';
import '../components/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          ProfileImage(),
          SizedBox(height: 20),
          Text(
            'Noppanut Maiprot',
            style: textTitle,
          ),
          SizedBox(height: 15),
          Text('noppanut.jang2547@gmail.com', style: textSubTitle),
          SizedBox(height: 15),
          Container(
            width: 150,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Center(
              child: Text('Edit Profile', style: textBtn),
            ),
          ),
          // Profile menu
          SizedBox(height: 15),
          ProfileMenu(
            title: 'Setting',
            icons: Icons.settings,
          ),
          SizedBox(height: 15),
          ProfileMenu(
            title: 'Billing details',
            icons: Icons.wallet,
          ),
          SizedBox(height: 15),
          ProfileMenu(
            title: 'User management',
            icons: Icons.person,
          ),
          SizedBox(height: 15),
          ProfileMenu(
            title: 'Favorite',
            icons: Icons.star,
          ),
          SizedBox(height: 15),
          ProfileMenu(
            title: 'Logout',
            icons: Icons.logout,
          ),
        ],
      ),
    );
  }
}
