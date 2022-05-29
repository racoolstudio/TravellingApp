import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui2/constant.dart';
import 'package:ui2/widgets/font.dart';

class RAppBotton extends StatelessWidget {
  bool isResponsive;
  RAppBotton({required this.isResponsive});
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: 50,
        width: isResponsive ? kMaxSize : 100,
        decoration: BoxDecoration(
          color: kMainColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: isResponsive
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: Font(
                          text: 'Book Trip Now',
                          size: 15,
                          color: Colors.white)),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    child: SvgPicture.asset(
                      'img/arrow.svg',
                      color: Colors.white,
                      height: 80,
                    ),
                  )
                ],
              )
            : Padding(
                padding: const EdgeInsets.only(top: 6.0, left: 4),
                child: SvgPicture.asset(
                  'img/arrow.svg',
                  color: Colors.white,
                  height: 80,
                ),
              ),
      ),
    );
  }
}
