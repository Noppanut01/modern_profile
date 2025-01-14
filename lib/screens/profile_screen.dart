import 'package:flutter/material.dart';
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
    Text('Home'),
    Text('Favorite'),
    Text('Setting'),
    EditProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          'Edit Profile',
          style: textTitle,
        ),
        // centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios,
          size: 20,
          // color: iconPrimaryColor,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: _pages[_selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedItem,
        onTap: _navigationBottomNavbar,
        type: BottomNavigationBarType.fixed,
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
