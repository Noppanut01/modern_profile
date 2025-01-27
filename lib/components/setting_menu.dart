import 'package:flutter/material.dart';
import '../constant/constant.dart';

class SettingMenu extends StatelessWidget {
  final String title;
  final IconData icons;

  const SettingMenu({
    super.key,
    required this.title,
    required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 30,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Icon(icons, color: iconPrimaryColor),
        ],
      ),
    );
  }
}
