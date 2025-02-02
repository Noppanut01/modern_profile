import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modern_profile/components/category_box.dart';
import 'package:modern_profile/components/recent_box.dart';

class FilePage extends StatefulWidget {
  const FilePage({super.key});

  @override
  State<FilePage> createState() => _FilePageState();
}

class _FilePageState extends State<FilePage> {
  String selectedFilter = 'All File'; // Default selected value
  final List<CategoryBox> categoryBoxes = [
    CategoryBox(
      icon: CupertinoIcons.folder_solid,
      title: "System Icons set",
      subtile: "system icon",
    ),
    CategoryBox(
      icon: CupertinoIcons.folder_solid,
      title: "UX/UI",
      subtile: "user interface",
    ),
  ];
  final List<RecentFileBox> recentBoxes = [
    RecentFileBox(
      imageURL: "lib/images/icon-1.png",
      title: "Web illustration",
      subtitle: "SVG & AI file",
    ),
    RecentFileBox(
      imageURL: "lib/images/icon-4.png",
      title: "App illustration",
      subtitle: "SVG & AI file",
    ),
    RecentFileBox(
      imageURL: "lib/images/icon-3.png",
      title: "Mobile Application",
      subtitle: "Fig file",
    ),
    RecentFileBox(
      imageURL: "lib/images/icon-2.png",
      title: "AI Application",
      subtitle: "AI file",
    ),
    RecentFileBox(
      imageURL: "lib/images/icon-5.png",
      title: "UX/Ui Design",
      subtitle: "Fig file",
    ),
    RecentFileBox(
      imageURL: "lib/images/icon-6.png",
      title: "Docker Container",
      subtitle: "Docker file",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Row File - All file
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'File',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Dropdown Filter
            DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: selectedFilter,
                items: <String>[
                  "All File",
                  "PDF",
                  "IMG",
                  "SVG",
                ].map((String value) {
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
        // Recent file
        SizedBox(
          height: 10,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "RECENT",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFFA88B96),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: recentBoxes.map((recentBox) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              right: 15.0), // Add space between boxes
                          child: RecentFileBox(
                            imageURL: recentBox.imageURL,
                            title: recentBox.title,
                            subtitle: recentBox.subtitle,
                          ),
                        );
                      }).toList(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "CATEGORIES",
              style: TextStyle(
                  fontSize: 13,
                  color: Color(0xFFA88B96),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: categoryBoxes.map((categoryBox) {
                return Padding(
                  padding: const EdgeInsets.only(
                      bottom: 15.0), // Add space between boxes
                  child: CategoryBox(
                    icon: categoryBox.icon,
                    title: categoryBox.title,
                    subtile: categoryBox.subtile,
                  ),
                );
              }).toList(),
            ),
          ],
        )
      ],
    );
  }
}
