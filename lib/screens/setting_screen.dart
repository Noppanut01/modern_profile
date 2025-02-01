import 'package:flutter/material.dart';
import 'package:modern_profile/components/appbar.dart';
import '/components/setting_menu.dart';
import '/constant/constant.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Setting",
        leadIcons: Icons.arrow_back_ios,
        actionIcons: Icons.settings,
        appBarColor: Colors.blueAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(15.0),
                child: Container(
                  // color: Colors.black12,
                  padding: EdgeInsets.all(20.0),
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('lib/images/profile.jpg'),
                      ),
                      SizedBox(width: 16),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Noppanut Maiprot',
                              style: textTitle,
                            ),
                            Text(
                              'noppanut.jang2547@gmail.com',
                              style: textSubTitle,
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
              // line
              Container(
                color: Colors.white,
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: 16,
                  endIndent: 16,
                ),
              ),
              // Account Settings
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(20.0),
                width: double.infinity,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Account Settings',
                        style: textSubTitle,
                      ),
                    ),
                    SizedBox(height: 20),
                    SettingMenu(
                      title: 'Edit Profile',
                      icons: Icons.arrow_forward_ios,
                    ),
                    SizedBox(height: 15),
                    SettingMenu(
                      title: 'Change Password',
                      icons: Icons.arrow_forward_ios,
                    ),
                    SizedBox(height: 15),
                    SettingMenu(
                      title: 'Language',
                      icons: Icons.arrow_forward_ios,
                    ),
                    SizedBox(height: 15),
                    SettingMenu(
                      title: 'Privacy and Security',
                      icons: Icons.arrow_forward_ios,
                    ),
                    SizedBox(height: 15),
                    SettingMenu(
                      title: 'Notification',
                      icons: Icons.arrow_forward_ios,
                    ),
                    SizedBox(height: 15),
                    SettingMenu(
                      title: 'Appearance',
                      icons: Icons.arrow_forward_ios,
                    ),
                    SizedBox(height: 15),
                    SettingMenu(
                      title: 'Payment',
                      icons: Icons.add,
                    ),
                  ],
                ),
              ),
              // Line
              Container(
                color: Colors.white,
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: 16,
                  endIndent: 16,
                ),
              ),
              // Support
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(20.0),
                width: double.infinity,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Support',
                        style: textSubTitle,
                      ),
                    ),
                    SizedBox(height: 20),
                    SettingMenu(
                      title: 'About',
                      icons: Icons.arrow_forward_ios,
                    ),
                    SizedBox(height: 15),
                    SettingMenu(
                      title: 'Terms of Service',
                      icons: Icons.arrow_forward_ios,
                    ),
                    SizedBox(height: 15),
                    SettingMenu(
                      title: 'Privacy Policy',
                      icons: Icons.arrow_forward_ios,
                    ),
                    SizedBox(height: 15),
                    SettingMenu(
                      title: 'Help Center',
                      icons: Icons.arrow_forward_ios,
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: Center(
                        child: Text(
                          'Logout',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
