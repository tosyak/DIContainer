import 'package:flutter/material.dart';
import 'package:lesson_di/my_app.dart';

class ExampleWidget extends StatelessWidget {
  final ExampleWidgetModel model;
  const ExampleWidget({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: model.onPress,
              child: const Text('Push me'),
            ),
            ElevatedButton(
              onPressed: model.onPress2,
              child: const Text('Push meeeee'),
            ),
          ],
        ),
      )),
    );
  }
}
