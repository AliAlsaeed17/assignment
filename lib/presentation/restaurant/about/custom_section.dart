import 'package:assignment/presentation/restaurant/about/custom_subtitle.dart';

import 'package:flutter/material.dart';

class CustomSection extends StatelessWidget {
  CustomSection({required this.title, required this.widget, Key? key})
      : super(key: key);

  String title;
  Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          widget,
        ],
      ),
    );
  }
}
