import 'package:flutter/material.dart';
import 'package:modern_profile/components/appbar.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Favorite",
        leadIcons: Icons.arrow_back_ios,
        actionIcons: Icons.star,
        appBarColor: Colors.white,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: Text('Favorite Screen'),
        ),
      ),
    );
  }
}
