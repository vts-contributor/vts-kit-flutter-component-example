// ignore_for_file: non_constant_identifier_names

import 'package:vts_kit_flutter_component_example/screens/accordian/accordian.dart';
import 'package:vts_kit_flutter_component_example/screens/avatar/avatars.dart';
import 'package:vts_kit_flutter_component_example/screens/badges/badges.dart';
import 'package:vts_kit_flutter_component_example/screens/button/button_types.dart';
import 'package:vts_kit_flutter_component_example/screens/button/icon_buttons.dart';
import 'package:vts_kit_flutter_component_example/screens/button/pill_buttons.dart';
import 'package:vts_kit_flutter_component_example/screens/button/social_buttons.dart';
import 'package:vts_kit_flutter_component_example/screens/button/standard_buttons.dart';
import 'package:vts_kit_flutter_component_example/screens/button/text_buttons.dart';
import 'package:vts_kit_flutter_component_example/screens/cards/cards.dart';
import 'package:vts_kit_flutter_component_example/screens/carousel/carousel.dart';
import 'package:vts_kit_flutter_component_example/screens/charts/pie_chart/pie_chart.dart';
import 'package:vts_kit_flutter_component_example/screens/date_time_picker/date_time_picker.dart';
import 'package:vts_kit_flutter_component_example/screens/dropdowns/dropdown_multiple_select.dart';
import 'package:vts_kit_flutter_component_example/screens/dropdowns/dropdown_single_select.dart';
import 'package:vts_kit_flutter_component_example/screens/dropdowns/dropdown_types.dart';
import 'package:vts_kit_flutter_component_example/screens/home.dart';
import 'package:vts_kit_flutter_component_example/screens/images/images.dart';
import 'package:vts_kit_flutter_component_example/screens/progress_bar/progress_bar.dart';
import 'package:vts_kit_flutter_component_example/screens/rating_bar/rating_bar.dart';
import 'package:vts_kit_flutter_component_example/screens/searchbar/seachbar.dart';
import 'package:vts_kit_flutter_component_example/screens/shimmer/shimmer.dart';
import 'package:vts_kit_flutter_component_example/screens/tabs/bottom_icon_tab.dart';
import 'package:vts_kit_flutter_component_example/screens/tabs/bottom_label_tab.dart';
import 'package:vts_kit_flutter_component_example/screens/tabs/icon_tabs.dart';
import 'package:vts_kit_flutter_component_example/screens/tabs/labeled_tabs.dart';
import 'package:vts_kit_flutter_component_example/screens/tabs/segment_tabs.dart';
import 'package:vts_kit_flutter_component_example/screens/tabs/tab_types.dart';
import 'package:vts_kit_flutter_component_example/screens/textfield/textfield.dart';
import 'package:vts_kit_flutter_component_example/screens/tiles/tiles_page.dart';
import 'package:vts_kit_flutter_component_example/screens/toast/toasts.dart';
import 'package:vts_kit_flutter_component_example/screens/toggle/toggles.dart';
import 'package:vts_kit_flutter_component_example/screens/alert/alert.dart';

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
    '/shimmer': (_) => ShimmerPage(),
    '/rating': (_) => RatingBarPage(),
    '/progress': (_) => ProgressBarPage(),
    '/text_field': (_) => TextFieldPage(),
    '/search_bar': (_) => SearchbarPage(),
    '/date_time_picker': (_) => DateTimePickerPage(),
    '/pie_chart': (_) => PieChartPage(),
    '/alert': (_) => AlertPage()
  };
}
