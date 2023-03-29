// ignore_for_file: non_constant_identifier_names

import 'package:vts_flutter_demo_pendo/screens/accordian/accordian.dart';
import 'package:vts_flutter_demo_pendo/screens/avatar/avatars.dart';
import 'package:vts_flutter_demo_pendo/screens/badges/badges.dart';
import 'package:vts_flutter_demo_pendo/screens/button/button_types.dart';
import 'package:vts_flutter_demo_pendo/screens/button/icon_buttons.dart';
import 'package:vts_flutter_demo_pendo/screens/button/pill_buttons.dart';
import 'package:vts_flutter_demo_pendo/screens/button/social_buttons.dart';
import 'package:vts_flutter_demo_pendo/screens/button/standard_buttons.dart';
import 'package:vts_flutter_demo_pendo/screens/button/text_buttons.dart';
import 'package:vts_flutter_demo_pendo/screens/cards/cards.dart';
import 'package:vts_flutter_demo_pendo/screens/carousel/carousel.dart';
import 'package:vts_flutter_demo_pendo/screens/date_picker/date_picker.dart';
import 'package:vts_flutter_demo_pendo/screens/dropdowns/dropdown_multiple_select.dart';
import 'package:vts_flutter_demo_pendo/screens/dropdowns/dropdown_single_select.dart';
import 'package:vts_flutter_demo_pendo/screens/dropdowns/dropdown_types.dart';
import 'package:vts_flutter_demo_pendo/screens/home.dart';
import 'package:vts_flutter_demo_pendo/screens/images/images.dart';
import 'package:vts_flutter_demo_pendo/screens/searchbar/seachbar.dart';
import 'package:vts_flutter_demo_pendo/screens/tabs/bottom_icon_tab.dart';
import 'package:vts_flutter_demo_pendo/screens/tabs/bottom_label_tab.dart';
import 'package:vts_flutter_demo_pendo/screens/tabs/icon_tabs.dart';
import 'package:vts_flutter_demo_pendo/screens/tabs/labeled_tabs.dart';
import 'package:vts_flutter_demo_pendo/screens/tabs/segment_tabs.dart';
import 'package:vts_flutter_demo_pendo/screens/tabs/tab_types.dart';
import 'package:vts_flutter_demo_pendo/screens/tiles/tiles_page.dart';
import 'package:vts_flutter_demo_pendo/screens/toast/toasts.dart';
import 'package:vts_flutter_demo_pendo/screens/toggle/toggles.dart';

class AppRoute {
  static dynamic Pages = {
    '/': (_) => HomePage(),
    
    '/button_types': (_) => ButtonTypes(),
    '/standard_button': (_) => StandardButtons(),
    '/pill_button': (_) => PillsButtons(),
    '/icon_button': (_) => IconButtons(),
    '/text_button': (_) => TextButtons(),
    '/social_button': (_) => SocialButtons(),

    '/tab_types': (_) => TabTypes(),
    '/segment_tab': (_) => SegmentTabsPage(),
    '/icon_tab': (_) => IconTabs(),
    '/labaled_tab': (_) => LabeledTabs(),
    '/bottom_icon_tab': (_) => BottomIconTab(),
    '/bottom_labeled_icon_tab': (_) => BottomLabelTab(),

    '/badge': (_) => BadgesPage(),

    '/card': (_) => CardPage(),

    '/carousel': (_) => CarouselPage(),

    '/avatar': (_) => AvatarPage(),

    '/image': (_) => ImagesPage(),

    '/tile': (_) => TilesPage(),

    '/toggle': (_) => TogglesPage(),

    '/toast': (_) => ToastsPage(),

    '/accordion': (_) => AccordionPage(),

    '/dropdown_type': (_) => DropdownTypes(),
    '/single_select': (_) => DropDownSingleSelect(),
    '/multi_select': (_) => DropDownMultipleSelect(),

    '/search_bar': (_) => SearchbarPage(),

    '/date_picker': (_) => DatePickerPage(),
  };
}
