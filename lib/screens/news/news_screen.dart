import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 160, 217, 220),
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 80),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/images/news.jpg"),
            ),
            SizedBox(height: 20),
            Text(
              "PUBG Mobile team initially used native development for both iOS and android ",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 10),
            Text(
              "Flutter allowed PUBG Mobile to build a single codebase for both iOS and Android, saving development time and effort. This is especially beneficial for a game with a massive global audience. ",
              style: TextStyle(fontSize: 20, color: Colors.grey),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildLogoImage("assets/images/ic_facebook.png"),
                buildLogoImage("assets/images/ic_instagram.png"),
                buildLogoImage("assets/images/ic_flutter.png"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: RichText(
        text: TextSpan(
          text: 'Flutter',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 30,
            fontFamily: 'Pacifico',
          ),
          children: [
            TextSpan(
              text: ' News',
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
                fontFamily: 'Pacifico',
              ),
            ),
          ],
        ),
      ),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 160, 217, 220),
      foregroundColor: Colors.blue,
      elevation: 0,
    );
  }

  Widget buildLogoImage(String imagePath) => ClipRRect(
    borderRadius: BorderRadius.circular(40),
    child: Image.asset(imagePath, height: 80, width: 60, fit: BoxFit.cover),
  );
}
