import 'package:flutter/widgets.dart';
import 'package:ui2/constant.dart';
import 'package:ui2/widgets/font.dart';
import 'package:ui2/widgets/space.dart';

Column textSlides(String heading, String title, String body) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Font(text: heading, size: kFontSizeBig, color: kTextColorBig),
      Font(
          text: title,
          size: kFontSizeMedium,
          color: kTextColorBig.withOpacity(0.6)),
      SpaceV(veritical: 20),
      SizedBox(
          width: 300,
          child: Font(text: body, size: kFontSizeSmall, color: kTextColorBig))
    ],
  );
}
