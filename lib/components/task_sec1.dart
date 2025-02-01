import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';
import 'progess.dart';
import 'team_widget.dart';

class TaskSection1 extends StatelessWidget {
  const TaskSection1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30)),
      ),
      child: Column(
        children: [
          // First section
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("App Project", style: textTitle),
                    SizedBox(width: 10),
                    Icon(CupertinoIcons.calendar),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: ProgressWidget(progress: 0.35),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Team"),
                        TeamAvatarRow(
                          teamImages: [
                            'lib/images/team1.jpg',
                            'lib/images/team2.jpg',
                            'lib/images/team3.jpg',
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 70,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFFE7F6EB),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Center(
                            child: Text('App',
                                style: TextStyle(color: Color(0xFF9CBC8B))),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Color(0xFF95BB7C),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 70,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(color: Color(0xFFECECEB)),
                      ),
                      child: Center(
                        child: Text('Done',
                            style: TextStyle(color: Color(0xFF6E7079))),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
          )
        ],
      ),
    );
  }
}
