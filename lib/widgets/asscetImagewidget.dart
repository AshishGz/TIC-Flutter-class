import 'package:flutter/material.dart';

class AssectImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/image.png',
      height: 100,
      width: 100,
      fit: BoxFit.contain,
    );
  }
}
