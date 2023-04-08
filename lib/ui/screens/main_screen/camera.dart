import 'package:flutter/material.dart';

class CameraPage extends StatelessWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: Center(
          child: Text(
            "This is for camera",
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}
