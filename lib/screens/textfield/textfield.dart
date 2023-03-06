import 'package:flutter/material.dart';
import 'package:vts_flutter_demo_pendo/components/demo_appbar.dart';
import 'package:vts_component/vts_component.dart';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({Key? key}) : super(key: key);

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  String inputText = "VTS TextField";
  TextEditingController controller = TextEditingController();
  GlobalKey<FormState>? viewKeyEn = GlobalKey<FormState>();
  GlobalKey<FormState>? viewKeyDis = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DemoAppbar(title: 'TextField'),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            VTSTextField(
              keyVTS: viewKeyEn,
              controller: controller,
              enabled: true,
            ),
            ElevatedButton(
              onPressed: () {
                if (viewKeyEn != null && viewKeyEn!.currentState!.validate()) {
                  setState(() {
                    inputText = controller.text;
                  });
                }
              },
              child: const Text('Submit'),
            ),
            Text(inputText),
            const SizedBox(
              height: 4.0,
            ),

            VTSTextField(
              enabled: false,
              keyVTS: viewKeyDis,
            ),

            // MyCustomForm(),
          ],
        ),
      ),
    );
  }
}
