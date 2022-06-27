import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              child: const Text('Go To Part'),
              onPressed: () {
                GoRouter.of(context)
                    .go('${GoRouter.of(context).location}/part/12');
              },
            ),
            const SizedBox(height: 16.0),
            Text('Id: $id'),
          ],
        ),
      ),
    );
  }
}
