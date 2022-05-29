import 'package:flutter/material.dart';
import 'package:ui2/constant.dart';
import 'package:ui2/screens/details.dart';
import 'package:ui2/widgets/font.dart';
import 'package:ui2/widgets/placedata.dart';
import 'package:ui2/widgets/space.dart';

List<String> exploreImages = ['Kayaking', 'Beach', 'Glass', 'Babe'];

Map places = {
  'tab4.jpg': PlaceData(
    pName: 'Abeokuta',
    pLocation: 'Ogun State, Nigeria.',
    price: '\$300',
    rate: 4,
    info:
        'Abeokuta is the headquarters for the federal Ogun-Oshun River Basin Development Authority with programs to harness land and water resources for Lagos, Ogun, Osun, and Oyo states for rural development.',
  ),
  'tabbar2.jpg': PlaceData(
    pName: 'Ibadan',
    pLocation: 'Oyo State, Nigeria.',
    price: '\$299',
    rate: 3,
    info:
        'Ibadan (UK: /ɪˈbædən/, US: /ɪˈbɑːdən/; Yoruba: Ìbàdàn) is the capital and most populous city of Oyo State, in Nigeria. It is the third-largest city by population in Nigeria after Lagos and Kano, with a total population of 3,649,000 as of 2021',
  ),
  'tabbar3.jpg': PlaceData(
    pName: 'Abuja (FCT)',
    pLocation: 'Anywhere, Nigeria.',
    price: '\$590',
    rate: 5,
    info:
        'Abuja is the first planned city to be built in Nigeria. Abuja lies at 1,180 feet (360 metres) above sea level and has a cooler climate and less humidity than is found in Lagos.',
  ),
};

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    TabController controller = TabController(
      length: places.length,
      vsync: this,
    );
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40, left: 5),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    padding: const EdgeInsets.only(left: 0),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_new),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kTextColorsmall,
                    ),
                  )
                ]),
          ),
          SpaceV(veritical: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Font(
                text: 'Discover', size: kFontSizeBig, color: kTextColorBig),
          ),
          Container(
            height: 55,
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(top: 20),
            width: kMaxSize,
            child: TabBar(
                indicator: TabBarDecoration(color: kMainColor, radius: 5),
                labelPadding: const EdgeInsets.only(left: 20, right: 20),
                isScrollable: true,
                indicatorWeight: 10,
                controller: controller,
                labelColor: kMainColor,
                unselectedLabelColor: kTextColorsmall,
                labelStyle: const TextStyle(fontSize: 20),
                tabs: const [
                  Tab(
                    text: 'Places',
                  ),
                  Tab(
                    text: 'Inspirations',
                  ),
                  Tab(
                    text: 'Emotions',
                  ),
                ]),
          ),
          Container(
            height: 220,
            margin: const EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width,
            child: TabBarView(
              controller: controller,
              children: [
                ListView.builder(
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailPage(
                                index: index,
                                iplaceData: places.values.elementAt(index)))),
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 10),
                      margin: const EdgeInsets.only(
                        right: 10,
                      ),
                      height: 200,
                      width: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image:
                              AssetImage('img/${places.keys.elementAt(index)}'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: places.values.elementAt(index),
                    ),
                  ),
                  itemCount: places.length,
                  scrollDirection: Axis.horizontal,
                ),
                Container(
                  color: kTextColorBig,
                  child: Center(
                    child: Font(
                        text: 'Inspirations',
                        size: kFontSizeMedium,
                        color: Colors.white),
                  ),
                ),
                Container(
                  color: kTextColorBig,
                  child: Center(
                    child: Font(
                        text: 'Emotions',
                        size: kFontSizeMedium,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          SpaceV(veritical: 20),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Font(
                    text: 'Explore More',
                    size: kFontSizeMedium,
                    color: kTextColorBig),
                Font(text: 'See all', size: kFontSizeSmall, color: kMainColor),
              ],
            ),
          ),
          SpaceV(veritical: 20),
          SizedBox(
            height: 80,
            width: kMaxSize,
            child: ListView.builder(
              itemBuilder: (context, index) => Column(
                children: [
                  Container(
                    width: 80,
                    margin: const EdgeInsets.only(left: 20),
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('img/${exploreImages[index]}.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Font(
                        text: exploreImages[index],
                        size: kFontSizeSmall,
                        color: kTextColorsmall),
                  )
                ],
              ),
              itemCount: exploreImages.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class TabBarDecoration extends Decoration {
  Color color;
  double radius;
  TabBarDecoration({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // ignore: todo
    // TODO: implement createBoxPainter
    return TabBarBoxPainter(color: color, radius: radius);
  }
}

class TabBarBoxPainter extends BoxPainter {
  Color color;
  double radius;
  TabBarBoxPainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    // ignore: todo
    // TODO: implement paint
    Paint paint = Paint();
    paint.color = color;
    paint.isAntiAlias = false;
    Offset Coffset = Offset(configuration.size!.width / 2 - radius / 2, 50);
    canvas.drawCircle(offset + Coffset, radius, paint);
  }
}
