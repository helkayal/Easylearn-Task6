import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  const CardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 140,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 138,
        foregroundImage: AssetImage('assets/images/profile.jpg'),
      ),
    );
  }
}
