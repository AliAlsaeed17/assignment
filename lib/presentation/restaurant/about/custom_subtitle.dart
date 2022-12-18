import 'package:flutter/material.dart';

class CustomSubtitle extends StatelessWidget {
  CustomSubtitle({required this.title, Key? key}) : super(key: key);

  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(
            Icons.circle,
            color: Colors.black,
            size: 13,
          ),
          SizedBox(width: 4),
          Text(
            title,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
