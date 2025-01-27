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
          actionIcons: Icons.star),
    );
  }
}
