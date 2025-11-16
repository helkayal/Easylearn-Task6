import 'package:flutter/material.dart';
import 'package:task6_app/screens/business_card/widgets/card_image.dart';
import 'package:task6_app/screens/business_card/widgets/custom_text.dart';

class BusinessCardScreen extends StatelessWidget {
  const BusinessCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 84, 164, 243),
      appBar: buildAppBar(),
      body: Column(
        children: [
          SizedBox(height: 80),
          CardImage(),
          SizedBox(height: 60),
          CustomText(text: 'Call Me Maybe : ', icon: Icons.phone),
          CustomText(text: 'Whatsapp : ', icon: Icons.message),
          CustomText(text: 'Email : ', icon: Icons.email),
          CustomText(text: 'Instagram : ', icon: Icons.camera),
          Spacer(),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const Text('Business Card'),
      centerTitle: true,
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      titleTextStyle: const TextStyle(fontSize: 30, fontFamily: 'Pacifico'),
      shadowColor: Colors.lightBlue,
      elevation: 6,
    );
  }
}
