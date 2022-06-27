import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookPage extends StatelessWidget {
  const BookPage({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              child: const Text('Go To Favorite'),
              onPressed: () {
                GoRouter.of(context).go('/favorite/20');
              },
            ),
            OutlinedButton(
              child: const Text('Go To Settings'),
              onPressed: () {
                GoRouter.of(context).go('/settings/21');
              },
            ),
            OutlinedButton(
              child: const Text('Go To Test'),
              onPressed: () {
                //print('tandq current Root: ${GoRouter.of(context).go}');
                GoRouter.of(context)
                    .go('${GoRouter.of(context).location}/test/11');
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
