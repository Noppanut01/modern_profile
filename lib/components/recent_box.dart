import 'package:flutter/material.dart';

class RecentFileBox extends StatelessWidget {
  final String imageURL;
  final String title;
  final String subtitle;
  const RecentFileBox({
    super.key,
    required this.imageURL,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 150,
          height: 80,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageURL),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
        ),
        Container(
          width: 150,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
                Text(
                  subtitle,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 11),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
