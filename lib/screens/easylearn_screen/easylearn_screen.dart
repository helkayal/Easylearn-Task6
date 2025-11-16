import 'package:flutter/material.dart';

class EasylearnScreen extends StatelessWidget {
  const EasylearnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: buildAppBar(),
      body: Column(children: [buildContent(), buildBottomLogos()]),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      foregroundColor: Colors.white,
      leadingWidth: 25,
      centerTitle: false,
      title: Row(
        children: [
          Image.asset("assets/images/easylearn_logo.png", height: 45),
          const SizedBox(width: 10),
          const Expanded(
            child: Text(
              'Easy Learn Academy',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Pacifico',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Expanded buildContent() {
    return Expanded(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 20),
        padding: EdgeInsets.only(top: 30, left: 10, right: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                "assets/images/easylearn.png",
                height: 220,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'What is Flutter?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: const Text(
                  """Flutter is an open-source UI framework created by Google that allows developers to build mobile, web, and desktop applications using a single codebase. Instead of writing separate code for Android, iOS, and other platforms, Flutter lets you write one set of code in the Dart programming language, and it runs everywhere.
          
          Flutter is known for its fast performance because it doesn't rely on native system widgets. Instead, it draws everything on the screen using its own high-performance rendering engine. This gives you smooth animations, high-quality interfaces, and a consistent look across all devices.
          
          Another major advantage of Flutter is Hot Reload, which instantly shows code changes without restarting the application. This makes the development process faster, easier, and more efficient. Developers can experiment, fix bugs, and adjust UI elements quickly.
          
          Flutter also provides a rich set of customizable widgets that help you build beautiful and responsive user interfaces. Because of its flexibility and strong support from Google and the community, Flutter has become one of the most popular tools for building modern, cross-platform apps.""",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildBottomLogos() {
    return Container(
      padding: EdgeInsets.only(top: 40, bottom: 50, left: 20, right: 20),
      child: Row(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildLogoImage("assets/images/ic_facebook.png"),
          buildLogoImage("assets/images/ic_instagram.png"),
          buildLogoImage("assets/images/ic_linkedin.png"),
        ],
      ),
    );
  }

  Image buildLogoImage(String imagePath) => Image.asset(imagePath, height: 60);
}
