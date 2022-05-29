import 'package:flutter/material.dart';

import '../widgets/font.dart';

class Mypage extends StatelessWidget {
  const Mypage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Font(text: 'My Page', size: 40, color: Colors.grey)),
    );
  }
}
