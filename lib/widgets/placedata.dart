import 'package:flutter/material.dart';
import 'package:ui2/widgets/font.dart';

import '../constant.dart';

// ignore: must_be_immutable
class PlaceData extends StatelessWidget {
  PlaceData(
      {Key? key,
      required this.pName,
      required this.pLocation,
      required this.price,
      required this.rate,
      required this.info})
      : super(key: key);
  String pName;
  String pLocation;
  String price;
  int rate;
  String info;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Font(text: pName, size: kFontSizeMedium, color: Colors.white),
        Row(
          children: [
            const Icon(
              Icons.location_on,
              color: Colors.white,
            ),
            Font(text: pLocation, size: kFontSizeSmall, color: Colors.white),
          ],
        )
      ],
    );
  }
}
