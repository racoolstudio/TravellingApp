import 'package:flutter/material.dart';
import 'package:ui2/widgets/font.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Font(text: 'Search Page', size: 40, color: Colors.grey)),
    );
  }
}
