import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'tabbar_item.dart';
import 'task_page.dart';
import 'file_page.dart';
import 'idea_page.dart';

class TabNavigationWidget extends StatelessWidget {
  const TabNavigationWidget({
    super.key,
  });

  static const List<TabBarItem> tabItems = [
    TabBarItem(
      title: "Task",
      icon: CupertinoIcons.check_mark_circled_solid,
    ),
    TabBarItem(
      title: "File",
      icon: CupertinoIcons.folder_solid,
    ),
    TabBarItem(
      title: "Idea",
      icon: CupertinoIcons.lightbulb_fill,
    ),
  ];

  static const List<Widget> tabPages = [
    TaskPage(),
    FilePage(),
    IdeaPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      width: double.infinity,
      child: DefaultTabController(
        length: 3,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.transparent)),
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: TabBar(
                indicator: BoxDecoration(
                  color: Color(0xFFA88B96),
                  borderRadius: BorderRadius.circular(10),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Color(0xFFA88B96),
                tabs: [
                  tabItems[0],
                  tabItems[1],
                  tabItems[2],
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: TabBarView(
                children: [
                  for (int i = 0; i < tabPages.length; i++) tabPages[i],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
