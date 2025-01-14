import 'package:flutter/material.dart';
import '../constant/constant.dart';

class ProfileMenu extends StatelessWidget {
  final String title;
  final IconData icons;

  const ProfileMenu({
    super.key,
    required this.title,
    required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 40,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: bgSecondaryColor,
            // radius: 20,
            child: Icon(
              icons,
              size: 24,
              color: iconPrimaryColor,
            ),
          ),
          SizedBox(width: 15),
          Text(title, style: textSubTitle),
          SizedBox(width: 15),
          Spacer(),
          CircleAvatar(
              backgroundColor: bgSecondaryColor,
              radius: 16,
              child: Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: iconSecondaryColor,
              )),
        ],
      ),
    );
  }
}
