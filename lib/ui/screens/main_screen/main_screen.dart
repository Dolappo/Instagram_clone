import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/screens/main_screen/camera.dart';
import 'package:instagram_clone/ui/screens/main_screen/message.dart';
import 'package:instagram_clone/ui/screens/main_screen/home/home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(initialPage: 1);
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [CameraPage(), HomeScreen(), MessagesPage()],
      ),
    );
  }
}
