import 'package:flutter/material.dart';
import 'package:vts_component/vts_component.dart';

class ProgressBarPage extends StatelessWidget {
  const ProgressBarPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20.0),
        child: StreamBuilder<double>(
          stream: Stream.periodic(Duration(seconds: 1), (i) => i * 1.0)
              .takeWhile((value) => value <= 25),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              /// change this to `VTSLinearProgressBar` or
              /// `VTSCircularProgressBar`
              return VTSCircularProgressBar(
                  data: VTSProgressBarModel(
                currentValue: snapshot.data! * 4,
                maxValue: 100,
                unit: "Kb",
                label: "LABEL",
                speedRate: 4,
              ));
            }
            return Text("Waiting for connection");
          },
        ),
      ),
    );
  }
}
