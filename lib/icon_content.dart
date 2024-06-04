import 'package:flutter/material.dart';
import 'constants.dart';

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
        const SizedBox(
          height: 15.0,
        ),
        Text(
          iconName,
          style: kIconTextStyle,
        )
      ],
    );
  }
}
