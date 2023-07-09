import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({required this.avatarImage, required this.radius, super.key});

  final String avatarImage;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(avatarImage),
      minRadius: radius,
    );
  }
}
