import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final IconData icon;
  const CustomText({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: Colors.white, width: 2),
        gradient: LinearGradient(
          colors: [Colors.white, Colors.blueAccent],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Row(
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontFamily: 'Source Sans Pro',
            ),
          ),
          Spacer(),
          Icon(icon, color: Colors.black),
        ],
      ),
    );
  }
}
