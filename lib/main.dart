import 'dart:io';
import 'dart:math';

import 'package:android_id/android_id.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vts_component/common/style/vts_color.dart';
import 'package:vts_kit_flutter_component_example/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
      title: 'VTS Flutter Component UI lib',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: VTSColors.ILUS_GRAY_7,
          fontFamily: 'Sarabun',
          scrollbarTheme: ScrollbarThemeData(
            isAlwaysShown: true,
            thickness: MaterialStateProperty.all(5),
            thumbColor: MaterialStateProperty.all(Color(0xFF8F9294)),
            radius: Radius.circular(8),
          )),
      initialRoute: '/',
      routes: AppRoute.Pages);
}
