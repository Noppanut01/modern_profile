import 'package:flutter/material.dart';
import '/constant/constant.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData leadIcons;
  final IconData actionIcons;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.leadIcons,
    required this.actionIcons,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.amber,
      title: Text(
        title,
        style: textTitle,
      ),
      leading: Icon(
        leadIcons,
        size: 20,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(actionIcons),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
