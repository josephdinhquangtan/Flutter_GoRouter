import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PartPage extends StatelessWidget {
  const PartPage({super.key, required this.id});

  final String id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Part Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              child: const Text('Go to Questions'),
              onPressed: () {
                GoRouter.of(context)
                    .go('${GoRouter.of(context).location}/question/14');
                //GoRouter.of(context).go('/question/14');
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
