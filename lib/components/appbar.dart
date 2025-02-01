import 'package:flutter/material.dart';
import '/constant/constant.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color appBarColor;
  final IconData leadIcons;
  final IconData actionIcons;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.leadIcons,
    required this.actionIcons,
    required this.appBarColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColor,
      title: Text(
        title,
        style: textTitle,
      ),
      leading: Icon(
        leadIcons,
        size: 25,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(actionIcons, size: 25, color: Colors.black),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
