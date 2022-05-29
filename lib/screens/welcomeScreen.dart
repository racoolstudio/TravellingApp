import 'package:flutter/material.dart';
import 'package:ui2/constant.dart';
import 'package:ui2/screens/homePage.dart';
import 'package:ui2/widgets/responsiveAppBotton.dart';
import 'package:ui2/widgets/space.dart';

import '../widgets/textslider.dart';

// ignore: non_constant_identifier_names
var BackgroundImage = {
  'others.jpg': textSlides('Be Free', 'Discover',
      'Water is one of the most plentiful and essential compounds, occurring as a liquid on Earth\'s surface under normal conditions.'),
  'bgimage2.jpg': textSlides('Explore', 'Unleash',
      'mountain is large landform that streches above the surrounding land in a limited area, usually in the form of a peak'),
  'bgimage3.jpg': textSlides('Enjoy', 'Peace',
      'mountain is generally steeper than a hill. mountain are formed through tectonic forces and volcanoes. these forces can locally raise the surface of the earth.'),
  'bgimage4.jpg': textSlides('Connect', 'True Love',
      'Deceptively reserved and flat,it lies ‘in grandeur and in mass’beneath a sea of shifting snow-dunes;dots of cyclamen-red and maroon.')
};

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => Container(
          width: kMaxSize,
          height: kMaxSize,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('img/${BackgroundImage.keys.elementAt(index)}'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: const EdgeInsets.only(left: 20, top: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(child: BackgroundImage.values.elementAt(index)),
                    SpaceH(horizontal: 10),
                    Column(
                      children:
                          List.generate(BackgroundImage.length, (sliderIndex) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 5),
                          height: sliderIndex == index ? 25 : 12,
                          width: 10,
                          decoration: BoxDecoration(
                              color: sliderIndex == index
                                  ? kMainColor
                                  : kTextColorsmall.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10)),
                        );
                      }),
                    )
                  ],
                ),
                SpaceV(veritical: 20),
                GestureDetector(
                    onTap: () => setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        }),
                    child: SizedBox(
                        width: 100,
                        height: 50,
                        child: RAppBotton(isResponsive: false))),
              ],
            ),
          ),
        ),
        itemCount: BackgroundImage.length,
      ),
    );
  }
}
