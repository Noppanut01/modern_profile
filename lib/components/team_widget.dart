import 'package:flutter/material.dart';

class TeamAvatarRow extends StatelessWidget {
  final List<String> teamImages; // List of team member image paths

  const TeamAvatarRow({
    super.key,
    required this.teamImages,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Team Avatars
        ...teamImages.asMap().entries.map((entry) {
          int index = entry.key;
          String imagePath = entry.value;

          return Transform.translate(
            offset: Offset(-10.0 * index, 0), // Overlap avatars
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 23,
              child: CircleAvatar(
                backgroundImage: AssetImage(imagePath),
                radius: 20,
              ),
            ),
          );
        }),
        // Add Button
        Transform.translate(
          offset: Offset(-10.0 * teamImages.length, 0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 23,
            child: CircleAvatar(
              backgroundColor: Color(0xFFE7AD7E),
              radius: 20,
              child: Icon(Icons.add, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
