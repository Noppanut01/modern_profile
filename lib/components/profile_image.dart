import 'package:flutter/material.dart';

import '../constant/constant.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            backgroundColor: Colors.amber,
            radius: 60,
            child: CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage('lib/images/profile.jpeg'),
            ),
          ),
          CircleAvatar(
            backgroundColor: bgPrimaryColor,
            radius: 22,
            child: CircleAvatar(
              backgroundColor: Colors.amber,
              child: Icon(
                Icons.edit,
                size: 20,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
