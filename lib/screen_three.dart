import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Screen 3"),
            ElevatedButton(
              onPressed: () {
                context.push('/screen4');
              },
              child: Text("screen 4"),
            )
          ],
        ),
      ),
    );
  }
}
