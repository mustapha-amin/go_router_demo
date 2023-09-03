import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    final title = GoRouter.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen one"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.go('/screen2');
              },
              child: const Text("Go to screen 2"),
            ),
            ElevatedButton(
              onPressed: () {
                context.go('/screen3');
              },
              child: const Text("Go to screen 3"),
            ),
          ],
        ),
      ),
    );
  }
}
