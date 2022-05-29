import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SpaceV extends StatelessWidget {
  double veritical;
  SpaceV({Key? key, required this.veritical}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: veritical,
    );
  }
}

// ignore: must_be_immutable
class SpaceH extends StatelessWidget {
  double horizontal;
  SpaceH({Key? key, required this.horizontal}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: horizontal,
    );
  }
}
