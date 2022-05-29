import 'package:flutter/material.dart';
import 'package:ui2/constant.dart';
import 'package:ui2/screens/homeScreen.dart';
import 'package:ui2/widgets/font.dart';
import 'package:ui2/widgets/placedata.dart';
import 'package:ui2/widgets/responsiveAppBotton.dart';
import 'package:ui2/widgets/space.dart';

int button = -1;

// ignore: must_be_immutable
class DetailPage extends StatefulWidget {
  int index;
  final PlaceData iplaceData;
  DetailPage({Key? key, required this.index, required this.iplaceData})
      : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    var mQ = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: mQ.width,
            height: mQ.height,
          ),
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              width: mQ.width,
              height: mQ.height / 2 - 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('img/${places.keys.elementAt(widget.index)}'),
                fit: BoxFit.cover,
              )),
            ),
          ),
          Positioned(
            top: 20,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  padding: const EdgeInsets.only(left: 0),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                  ),
                ),
                const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Positioned(
            top: (mQ.height / 2) - 120,
            child: Container(
              height: (mQ.height / 2) + 120,
              width: mQ.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Font(
                            text: widget.iplaceData.pName,
                            size: kFontSizeBig,
                            color: kTextColorBig),
                        Font(
                            text: widget.iplaceData.price,
                            size: kFontSizeBig,
                            color: kMainColor),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: kMainColor,
                        ),
                        Font(
                            text: widget.iplaceData.pLocation,
                            size: kFontSizeSmall,
                            color: kMainColor),
                      ],
                    ),
                    SpaceV(veritical: 10),
                    Row(children: [
                      Row(
                        children: List.generate(
                            5,
                            (index) => Icon(
                                  Icons.star,
                                  color: widget.iplaceData.rate > index
                                      ? Colors.orange
                                      : kTextColorsmall,
                                )),
                      ),
                      SpaceH(horizontal: 5),
                      Font(
                          text: '(${widget.iplaceData.rate},0)',
                          size: kFontSizeSmall,
                          color: kTextColorsmall)
                    ]),
                    SpaceV(veritical: 30),
                    Font(
                        text: 'People',
                        size: kFontSizeMedium,
                        color: kTextColorBig),
                    Font(
                        text: 'Number of People in Your Group',
                        size: kFontSizeSmall,
                        color: kTextColorsmall),
                    SpaceV(veritical: 10),
                    Row(
                      children: List.generate(
                        5,
                        (index) => GestureDetector(
                          onTap: () => setState(() {
                            button = index;
                          }),
                          child: Container(
                            width: 50,
                            height: 50,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: button == index
                                  ? kTextColorBig
                                  : kTextColorsmall.withOpacity(0.2),
                            ),
                            child: Center(
                              child: Font(
                                text: '${index + 1}',
                                size: kFontSizeMedium,
                                color: button == index
                                    ? Colors.white
                                    : kTextColorBig,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SpaceV(veritical: 15),
                    Font(
                        text: 'Descripton',
                        size: kFontSizeMedium,
                        color: kTextColorBig),
                    SpaceV(veritical: 5),
                    Font(
                      text: widget.iplaceData.info,
                      size: kFontSizeSmall,
                      color: kTextColorsmall,
                    ),
                    SpaceV(veritical: 20),
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: kMainColor,
                                  width: 2,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: const Center(
                            child: Icon(
                              Icons.favorite_border_outlined,
                              color: kMainColor,
                            ),
                          ),
                        ),
                        SpaceH(
                          horizontal: 10,
                        ),
                        RAppBotton(isResponsive: true),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
