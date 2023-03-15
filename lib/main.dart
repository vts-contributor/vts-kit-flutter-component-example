import 'dart:io';
import 'dart:math';

import 'package:android_id/android_id.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vts_component/common/style/vts_color.dart';
import 'package:vts_flutter_demo_pendo/routes.dart';
import 'package:pendo_sdk/pendo_sdk.dart';

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
    // TODO: implement initState
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    var pendoKey =
        'eyJhbGciOiJSUzI1NiIsImtpZCI6IiIsInR5cCI6IkpXVCJ9.eyJkYXRhY2VudGVyIjoidXMiLCJrZXkiOiI2NjM0OTVmMTZhMjI2MTI5MzUzZTJjNGIxOGRlZGUzNzNhMzg4NTNmYjkyMGIxYTYyNDU5YmI2MGU5YjZkZjU3ZmNmZGU4NzAyOGNhODIxYTE2NGNmMzFiMzExNDU0MzZlYzI2NDU3NTY2NWZmZDIzNTE0MTcxNzVkNWUwZWRkZDQ3YTE5NjJhMTg0ODZmNDQ5OWRiMzE2ODBjNWEwN2JiMDExMTRjYjRkNWNmZjYzMmY5ZjA4NjNiNGI0MThhODFmZDRkMzM1MTVhMDRiOTdhZGZlNWI1NjZmYWNmZWU0Yy43YzAzZTRiZjlkZWNmYzE4YzRkNzU1MzY4N2JmNzQ1OC4yZTBlNmE3YmVkMjhkMjBkOGUyODFmNzEzNzdiMDczZjMyMWE3NDU5OGM4MmMwNzI1NjRiYzk2NzA4ZTZlODI5In0.cdSh8M7Vyeo-T-D54FcSAm2BKZLAKVW6GdlgeedRjkTtGLnSb62CX-dNol1BscoPZprzZtxw22TUWP5upOIH-d7K-6Xp2zXNZufIAeQ06OCP_39vyuX5Tz4h4fme0J5YTKEcVFfYbznoYQQsWsYG33LxNvNz6cs_A95KhDIXpsc';

    // Setup the Pendo SDK
    await PendoFlutterPlugin.setup(pendoKey);

    // Start a new session with an identified visitor
    String? uniqueId = "";
    var deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      // import 'dart:io'
      var iosDeviceInfo = await deviceInfo.iosInfo;
      uniqueId = iosDeviceInfo.identifierForVendor; // unique ID on iOS
    } else if (Platform.isAndroid) {
      var _androidIdPlugin = AndroidId();
      uniqueId = await _androidIdPlugin.getId(); // unique ID on Android
    }

    var r = Random();
    uniqueId =
        String.fromCharCodes(List.generate(16, (index) => r.nextInt(33) + 89));
    final String visitorId = uniqueId ?? 'Unknown ID';
    final String accountId = uniqueId ?? 'Unknown ID';
    final dynamic visitorData = {
      'Age': '25',
      'Country': 'USA',
      'nickname': 'phucnh36'
    };
    final dynamic accountData = {'Tier': '1', 'Size': 'Enterprise'};

    await PendoFlutterPlugin.startSession(
            visitorId, accountId, visitorData, accountData)
        .then((value) => {print("Started")});

    await PendoFlutterPlugin.track("Test main", {})
        .then((value) => {print("Track Main")});

    if (!mounted) return;
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
