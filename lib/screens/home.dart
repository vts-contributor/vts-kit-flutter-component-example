import 'package:flutter/material.dart';
import 'package:vts_component/vts_component.dart';
import 'package:vts_flutter_demo_pendo/components/demo_appbar.dart';
import 'package:vts_flutter_demo_pendo/screens/dropdowns/dropdown_types.dart';
import 'package:vts_flutter_demo_pendo/screens/progress_bar/progress_bar.dart';
import 'package:vts_flutter_demo_pendo/screens/rating_bar/rating_bar.dart';
import 'package:vts_flutter_demo_pendo/screens/shimmer/shimmer.dart';
import '../screens/accordian/accordian.dart';
import '../screens/avatar/avatars.dart';
import '../screens/badges/badges.dart';
import '../screens/button/button_types.dart';
import '../screens/cards/cards.dart';
import '../screens/carousel/carousel.dart';
import '../screens/images/images.dart';
import '../screens/searchbar/seachbar.dart';
import '../screens/tabs/tab_types.dart';
import '../screens/tiles/tiles_page.dart';
import '../screens/toast/toasts.dart';
import '../screens/toggle/toggles.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addTrackEvent();
    print("Add Track");
  }

  Future<void> addTrackEvent() async {
    if (!mounted) return;
  }

  List gfComponents = [
    {
      'icon': const IconData(
        0xe904,
        fontFamily: 'GFFontIcons',
      ),
      'title': 'Button',
      'route': ButtonTypes()
    },
    {
      'icon': const IconData(
        0xe91d,
        fontFamily: 'GFFontIcons',
      ),
      'title': 'Tabs',
      'route': TabTypes()
    },
    {
      'icon': const IconData(
        0xe902,
        fontFamily: 'GFFontIcons',
      ),
      'title': 'Badge',
      'route': BadgesPage()
    },
    {
      'icon': const IconData(
        0xe905,
        fontFamily: 'GFFontIcons',
      ),
      'title': 'Cards',
      'route': CardPage()
    },
    {
      'icon': const IconData(
        0xe906,
        fontFamily: 'GFFontIcons',
      ),
      'title': 'Carousel',
      'route': CarouselPage()
    },
    {
      'icon': const IconData(
        0xe903,
        fontFamily: 'GFFontIcons',
      ),
      'title': 'Avatar',
      'route': AvatarPage()
    },
    {
      'icon': const IconData(
        0xe90d,
        fontFamily: 'GFFontIcons',
      ),
      'title': 'Images',
      'route': ImagesPage()
    },
    {
      'icon': const IconData(
        0xe90e,
        fontFamily: 'GFFontIcons',
      ),
      'title': 'Tiles',
      'route': TilesPage()
    },
    {
      'icon': const IconData(
        0xe910,
        fontFamily: 'GFFontIcons',
      ),
      'title': 'Toggle',
      'route': TogglesPage()
    },
    {
      'icon': const IconData(
        0xe920,
        fontFamily: 'GFFontIcons',
      ),
      'title': 'Toast',
      'route': ToastsPage()
    },
    {
      'icon': const IconData(
        0xe900,
        fontFamily: 'GFIconsneww',
      ),
      'title': 'DropDown',
      'route': DropdownTypes()
    },
    {
      'icon': const IconData(
        0xe900,
        fontFamily: 'GFFontIcons',
      ),
      'title': 'Accordion',
      'route': AccordionPage()
    },
    {
      'icon': const IconData(
        0xe919,
        fontFamily: 'GFFontIcons',
      ),
      'title': 'Search Bar',
      'route': SearchbarPage()
    },
    {
      'icon': Icons.downloading,
      'title': 'Progress Bar',
      'route': ProgressBarPage()
    },
    {
      'icon': Icons.star_border_rounded,
      'title': 'Rating Bar',
      'route': RatingBarPage()
    },
    {
      'icon': Icons.blur_linear_rounded,
      'title': 'Shimmer',
      'route': ShimmerPage()
    },
    // {
    //   'icon': const IconData(
    //     0xe91e,
    //     fontFamily: 'GFFontIcons',
    //   ),
    //   'title': 'Appbar',
    //   'route': AppHome()
    // },
    // {
    //   'icon': const IconData(
    //     0xe901,
    //     fontFamily: 'GFFontIcons',
    //   ),
    //   'title': 'Alert',
    //   'route': AlertPage()
    // },
    // {
    //   'icon': const IconData(
    //     0xe901,
    //     fontFamily: 'GFFontIcons2',
    //   ),
    //   'title': 'Rating',
    //   'route': RatingPage()
    // },
    // {
    //   'icon': const IconData(
    //     0xe901,
    //     fontFamily: 'GFIcons',
    //   ),
    //   'title': 'Loaders',
    //   'route': Loaders()
    // },
    // {
    //   'icon': const IconData(
    //     0xe923,
    //     fontFamily: 'GFFontIcons',
    //   ),
    //   'title': 'Typography',
    //   'route': TypographyMenu()
    // },
    // {
    //   'icon': const IconData(
    //     0xe900,
    //     fontFamily: 'GFFontIcons2',
    //   ),
    //   'title': 'Floating Widget',
    //   'route': FloatingWidgetHome()
    // },
    // {
    //   'icon': const IconData(
    //     0xe900,
    //     fontFamily: 'GFIcons',
    //   ),
    //   'title': 'Progress Bar',
    //   'route': ProgressBar()
    // },
    // {
    //   'icon': const IconData(
    //     0xe900,
    //     fontFamily: 'GFFontIcons2',
    //   ),
    //   'title': 'Shimmer',
    //   'route': ShimmerPage()
    // },
    // {
    //   'icon': const IconData(
    //     0xe906,
    //     fontFamily: 'GFIconsnew',
    //   ),
    //   'title': 'CheckBox',
    //   'route': CheckBoxPage()
    // },
    // {
    //   'icon': const IconData(
    //     0xe905,
    //     fontFamily: 'GFIconsnew',
    //   ),
    //   'title': 'CheckboxListTile',
    //   'route': CheckBoxListTilePage()
    // },
    // {
    //   'icon': const IconData(
    //     0xe908,
    //     fontFamily: 'GFIconsnew',
    //   ),
    //   'title': 'RadioButton',
    //   'route': RadioButtonPage()
    // },
    // {
    //   'icon': const IconData(
    //     0xe909,
    //     fontFamily: 'GFIconsnew',
    //   ),
    //   'title': 'RadioListTile',
    //   'route': RadioListTilePage()
    // },
    // {
    //   'icon': const IconData(
    //     0xe900,
    //     fontFamily: 'GFIconsnew',
    //   ),
    //   'title': 'Border',
    //   'route': BorderPage()
    // },
    // {
    //   'icon': const IconData(
    //     0xe901,
    //     fontFamily: 'GFIconsnew',
    //   ),
    //   'title': 'BottomSheet',
    //   'route': BottomSheetPage()
    // },
    // {
    //   'icon': const IconData(
    //     0xe907,
    //     fontFamily: 'GFIconsnew',
    //   ),
    //   'title': 'Animation',
    //   'route': AnimationPage()
    // },
    // {
    //   'icon': const IconData(
    //     0xe901,
    //     fontFamily: 'GFIconsneww',
    //   ),
    //   'title': 'IntroScreen',
    //   'route': Introscreen()
    // },
    // {
    //   'icon': const IconData(
    //     0xe907,
    //     fontFamily: 'GFIconsneww',
    //   ),
    //   'title': 'StickyHeader',
    //   'route': StickyTypes()
    // },

  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        // drawer: DrawerPage(),
        appBar: DemoAppbar(goBack: false),
        body: ListView(
          physics: const ScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                  left: 15, bottom: 20, top: 20, right: 15),
              child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemCount: gfComponents.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemBuilder: (BuildContext context, int index) =>
                      GestureDetector(
                          onTap: () {},
                          child: buildSquareTile(
                              gfComponents[index]['title'],
                              gfComponents[index]['icon'],
                              gfComponents[index]['route']))),
            ),
            // Container(
            //   height: 160,
            //   margin: const EdgeInsets.only(left: 15, bottom: 20, right: 15),
            //   child: buildSquareTile(
            //       'RadioButton',
            //       const IconData(
            //         0xe900,
            //         fontFamily: 'GFIcons',
            //       ),
            //       RadioButtonPage()),
            // )
          ],
        ),
      );

  Widget buildSquareTile(String title, IconData? icon, Widget? route) =>
      InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (BuildContext context) => route!),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: VTSColors.WHITE_1,
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(width: 1, color: VTSCommon.BORDER_COLOR_LIGHT)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(
                icon,
                color: VTSColors.PRIMARY_0,
                size: 50,
              ),
//            Icon((icon),),
              Text(
                title,
                style: const TextStyle(color: VTSColors.BLACK_1, fontSize: 20),
              )
            ],
          ),
        ),
      );
}
