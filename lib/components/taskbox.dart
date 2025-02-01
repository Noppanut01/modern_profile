// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Taskbox extends StatefulWidget {
  final String title;
  final List<String> imageURL;
  final double valueProgess;
  final Color color;
  const Taskbox({
    super.key,
    required this.title,
    required this.imageURL,
    required this.valueProgess,
    required this.color,
  });

  @override
  State<Taskbox> createState() => _TaskboxState();
}

class _TaskboxState extends State<Taskbox> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Checkbox(
                  value: value,
                  onChanged: (bool? boxValue) {
                    setState(() {
                      value = boxValue ?? false;
                    });
                  },
                  checkColor: Color(0xFF95BB7C),
                  fillColor: WidgetStateProperty.all<Color>(Colors.white),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  side: WidgetStateBorderSide.resolveWith(
                    (states) {
                      if (states.contains(WidgetState.selected)) {
                        return BorderSide(color: Colors.green);
                      }
                      return BorderSide(color: Colors.black);
                    },
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 190,
                      child: LinearProgressIndicator(
                        value: widget.valueProgess, // Example progress value
                        backgroundColor: Colors.grey[300],
                        valueColor: AlwaysStoppedAnimation<Color>(widget.color),
                        borderRadius: BorderRadius.circular(10),
                        minHeight: 7,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(widget.imageURL[0]),
                ),
                SizedBox(
                  width: 1,
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(widget.imageURL[1]),
                )
              ],
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF70747F),
            ),
          ],
        ),
      ),
    );
  }
}
