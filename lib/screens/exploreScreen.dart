// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:ui2/widgets/font.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Font(text: 'Explore Page', size: 40, color: Colors.grey)),
    );
  }
}
