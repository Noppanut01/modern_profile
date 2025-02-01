import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/tab_navigation.dart';
import '../components/task_sec1.dart';
import '/components/appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Task Management",
        leadIcons: CupertinoIcons.arrow_left,
        actionIcons: CupertinoIcons.ellipsis_vertical,
        appBarColor: Colors.white,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFF5F7FA),
          // color: Colors.red,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TaskSection1(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TabNavigationWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
