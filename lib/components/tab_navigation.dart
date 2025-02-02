import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'tabbar_item.dart';
import 'task_page.dart';
import 'file_page.dart';
import 'idea_page.dart';

class TabNavigationWidget extends StatelessWidget {
  const TabNavigationWidget({super.key});

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
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.55,
        child: DefaultTabController(
          length: tabItems.length,
          child: Column(
            children: [
              // Container(
              //   decoration: BoxDecoration(
              //     color: Colors.black,
              //     borderRadius: BorderRadius.circular(15),
              //   ),
              //   padding: const EdgeInsets.symmetric(vertical: 5),
              //   child: TabBar(
              //     indicator: BoxDecoration(
              //       color: const Color(0xFFA88B96),
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //     indicatorColor: Colors.transparent,
              //     labelColor: Colors.white,
              //     unselectedLabelColor: const Color(0xFFA88B96),
              //     tabs: tabItems,
              //   ),
              // ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    tabBarTheme: TabBarTheme(
                      indicator: BoxDecoration(
                        color: Color(0xFFA88B96),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      dividerColor:
                          Colors.transparent, // ✅ REMOVE DEFAULT UNDERLINE
                    ),
                  ),
                  child: TabBar(
                    indicator: BoxDecoration(
                      color: Color(0xFFA88B96),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    indicatorColor:
                        Colors.transparent, // 🚨 HIDE UNDERLINE AGAIN
                    overlayColor: WidgetStateProperty.all(
                        Colors.transparent), // 🔥 REMOVE CLICK EFFECT
                    labelColor: Colors.white,
                    unselectedLabelColor: Color(0xFFA88B96),
                    tabs: tabItems,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: TabBarView(
                  children: tabPages,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
