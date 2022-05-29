import 'package:flutter/material.dart';

class SpaceV extends StatelessWidget {
  double veritical;
  SpaceV({required this.veritical});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: veritical,
    );
  }
}

class SpaceH extends StatelessWidget {
  double horizontal;
  SpaceH({required this.horizontal});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: horizontal,
    );
  }
}
