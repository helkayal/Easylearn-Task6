import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Widget screen;
  const CustomButton({super.key, required this.title, required this.screen});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return screen;
            },
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20, fontFamily: 'KodeMono'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        fixedSize: const Size(300, 60),
      ),
      child: Text(title),
    );
  }
}
