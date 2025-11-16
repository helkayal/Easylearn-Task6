import 'package:flutter/material.dart';
import 'package:task6_app/screens/business_card/business_card_screen.dart';
import 'package:task6_app/screens/easylearn_screen/easylearn_screen.dart';
import 'package:task6_app/screens/news/news_screen.dart';
import 'package:task6_app/widgets/custom_button.dart';

class Task6App extends StatelessWidget {
  const Task6App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Task 6',
            style: TextStyle(fontSize: 30, fontFamily: 'Pacifico'),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            spacing: 40,
            children: [
              Spacer(),
              CustomButton(
                title: 'Easy Learn Academy',
                screen: EasylearnScreen(),
              ),
              CustomButton(
                title: 'Business Card',
                screen: BusinessCardScreen(),
              ),
              CustomButton(title: 'Flutter News', screen: NewsScreen()),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
