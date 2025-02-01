import 'package:flutter/material.dart';
import 'package:modern_profile/components/taskbox.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  String selectedFilter = 'All Tasks'; // Default selected value

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // First section - Header
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'Add Task',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 13,
                  backgroundColor: Color(0xFFE8AD7D),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ],
            ),
            // Dropdown Filter
            DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: selectedFilter,
                items: <String>['All Tasks', 'Completed', 'Pending']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedFilter = newValue!;
                  });
                },
                icon: Icon(Icons.arrow_drop_down,
                    color: Colors.black54, size: 24),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        // Task-box section
        Taskbox(
          title: "Dashboard Design",
          imageURL: ["lib/images/team1.jpg", "lib/images/team2.jpg"],
          valueProgess: 0.5,
          color: Color(0xFFE8AD7D),
        ),
        SizedBox(height: 15),
        Taskbox(
          title: "Mobile App Design",
          imageURL: ["lib/images/team3.jpg", "lib/images/team1.jpg"],
          valueProgess: 1.0,
          color: Color(0xFF95BB7C),
        ),
        SizedBox(height: 15),
        Taskbox(
          title: "Wireframe Design",
          imageURL: ["lib/images/team2.jpg", "lib/images/team3.jpg"],
          valueProgess: 0.7,
          color: Color.fromARGB(255, 255, 241, 111),
        ),
      ],
    );
  }
}
