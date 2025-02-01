import 'package:flutter/material.dart';

class IdeaPage extends StatelessWidget {
  const IdeaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Have no any Ideas now.",
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}
