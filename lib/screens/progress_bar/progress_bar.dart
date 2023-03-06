import 'package:flutter/material.dart';
import 'package:vts_component/vts_component.dart';
import 'package:vts_flutter_demo_pendo/components/demo_appbar.dart';

class ProgressBarPage extends StatelessWidget {
  const ProgressBarPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DemoAppbar(title: 'Progress bar'),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20.0),
        child: StreamBuilder<double>(
          stream: Stream.periodic(Duration(seconds: 1), (i) => i * 1.0)
              .takeWhile((value) => value <= 25),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                children: [
                  VTSCircularProgressBar(
                      data: VTSProgressBarModel(
                    currentValue: snapshot.data! * 4,
                    maxValue: 100,
                    unit: "Kb",
                    label: "Circular Progress Bar (basic)",
                    speedRate: 4,
                  )),
                  Divider(height: 50),
                  //
                  VTSLinearProgressBar(
                      data: VTSProgressBarModel(
                    currentValue: snapshot.data! * 4,
                    maxValue: 100,
                    unit: "Kb",
                    label: "Linear Progress Bar (basic)",
                    speedRate: 4,
                  )),
                  Divider(height: 50),
                  //
                  VTSCircularProgressBar(
                      data: VTSProgressBarModel(
                    currentValue: snapshot.data! * 4,
                    maxValue: 100,
                    unit: "MB",
                    label: "Circular Progress Bar (custom)",
                    speedRate: 4,
                    backgroundColor: Colors.amber,
                    loadingColor: Colors.green,
                    unitTextStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.blue,
                    ),
                    fontSizePercentage: 13,
                  )),
                  Divider(height: 50),
                  //
                  VTSLinearProgressBar(
                      data: VTSProgressBarModel(
                    currentValue: snapshot.data! * 4,
                    maxValue: 100,
                    unit: "Kg",
                    label: "Linear Progress Bar (custom)",
                    speedRate: 4,
                    backgroundColor: Colors.amber,
                    loadingColor: Colors.green,
                    labelStyle: TextStyle(fontStyle: FontStyle.italic),
                    unitTextStyle: TextStyle(fontSize: 10),
                    fontSizePercentage: 13,
                  )),
                ],
              );
            }
            return Text("Waiting for connection");
          },
        ),
      ),
    );
  }
}
