import 'package:bio/components/fk_thin_button.dart';
import 'package:bio/components/fk_text.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        color: const Color.from(alpha: 1, red: 0.98, green: 0.98, blue: 0.98),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              FKThinButton(
                label: 'Do not press',
                onPressed: (event) => setState(() {
                  counter++;
                }),
              ),
              FKText(text: counter.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
