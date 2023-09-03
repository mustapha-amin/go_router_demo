import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Screen 2"),
          ElevatedButton(
            onPressed: () {
              context.push('/screen4');
            },
            child: Text("screen 4"),
          ),
        ],
      )),
    );
  }
}
