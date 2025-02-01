import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:modern_profile/constant/constant.dart';
// import '../constant/constant.dart';

class Box extends StatelessWidget {
  // final String title;
  // final IconData icon;
  const Box({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 200,
      // height: 150,
      decoration: BoxDecoration(
        //
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '24',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'kanit',
                    color: Colors.black,
                  ),
                ),
                Container(
                  width: 30, // Set width
                  height: 30, // Set height
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black, // Border color
                      width: 1.0, // Border width
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      CupertinoIcons.ellipsis,
                    ),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "In Progress",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'kanit',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
