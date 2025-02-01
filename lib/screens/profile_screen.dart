import 'package:flutter/material.dart';
import 'package:modern_profile/screens/favorite_screen.dart';
import 'package:modern_profile/screens/home_screen.dart';
import 'package:modern_profile/screens/setting_screen.dart';
import '/constant/constant.dart';
import 'edit_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedItem = 0;

  void _navigationBottomNavbar(int index) {
    setState(() {
      _selectedItem = index;
      // print(index);
    });
  }

  final List<Widget> _pages = [
    HomeScreen(),
    FavoriteScreen(),
    SettingScreen(),
    EditProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedItem,
        onTap: _navigationBottomNavbar,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: iconPrimaryColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
              color: iconPrimaryColor,
            ),
            label: 'favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: iconPrimaryColor,
            ),
            label: 'Setting',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: iconPrimaryColor,
            ),
            label: 'Edit Profile',
          ),
        ],
      ),
    );
  }
}
