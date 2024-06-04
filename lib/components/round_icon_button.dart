import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({super.key, this.onPressed, this.icon});
  final IconData? icon;
  final VoidCallback? onPressed;

  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      elevation: 6.0,
      disabledElevation: 0.0,
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
    );
  }
}
