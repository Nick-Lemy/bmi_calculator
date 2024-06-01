import 'package:flutter/material.dart';

const IconTextStyle = TextStyle(fontSize: 18, color: Color(0xFF8D8E98));

class IconContent extends StatelessWidget {
  const IconContent(
      {super.key, required this.iconImage, required this.iconName});

  final IconData iconImage;
  final String iconName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconImage,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          iconName,
          style: IconTextStyle,
        )
      ],
    );
  }
}
