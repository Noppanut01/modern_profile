import 'package:flutter/material.dart';
import '/components/appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Home",
        leadIcons: Icons.menu,
        actionIcons: Icons.search,
      ),
    );
  }
}
