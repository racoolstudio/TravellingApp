import 'package:flutter/widgets.dart';
import 'package:ui2/constant.dart';
import 'package:ui2/widgets/font.dart';
import 'package:ui2/widgets/space.dart';

Column textSlides(String Heading, String Title, String body) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Font(text: Heading, size: kFontSizeBig, color: kTextColorBig),
      Font(
          text: Title,
          size: kFontSizeMedium,
          color: kTextColorBig.withOpacity(0.6)),
      SpaceV(veritical: 20),
      SizedBox(
          width: 300,
          child: Font(text: body, size: kFontSizeSmall, color: kTextColorBig))
    ],
  );
}
