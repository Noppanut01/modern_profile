import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryBox extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtile;

  const CategoryBox({
    super.key,
    required this.icon,
    required this.title,
    required this.subtile,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 70,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFF5F7FA),
                  ),
                  child: Icon(
                    icon,
                    color: Color(0xFFA88B96),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      subtile,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Icon(CupertinoIcons.ellipsis_vertical),
          ],
        ),
      ),
    );
  }
}
