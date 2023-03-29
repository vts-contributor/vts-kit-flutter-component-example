import 'package:flutter/material.dart';
import 'package:vts_component/vts_component.dart';
import 'package:vts_flutter_demo_pendo/components/demo_appbar.dart';
import 'package:vts_flutter_demo_pendo/components/demo_box.dart';

class DatePickerPage extends StatefulWidget {
  const DatePickerPage({Key? key}) : super(key: key);

  @override
  State<DatePickerPage> createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {
  String data = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DemoAppbar(title: 'Date picker'),
      body: DemoBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(data),
            SizedBox(height: 30),
            VTSButton(
              text: 'Show date picker',
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                  builder: (_) => VTSDatePicker(
                    onDaySelected: (selectedDay) {
                      data =
                          '${selectedDay.toString().split(' ')[0]} ${selectedDay.hour}: ${selectedDay.minute}';
                      setState(() {});
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
