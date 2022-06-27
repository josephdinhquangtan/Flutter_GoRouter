import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({super.key, required this.id});

  final String id;
  @override
  Widget build(BuildContext context) {
    String searchValue = "";
    return Scaffold(
      appBar: AppBar(
        title: const Text('Question Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                searchValue = value;
              },
            ),
            const SizedBox(height: 16.0),
            OutlinedButton(
              child: const Text('Search Question'),
              onPressed: () {
                GoRouter.of(context).go(
                    '${GoRouter.of(context).location}/search?query=$searchValue');
                //GoRouter.of(context).go('/search?query=$searchValue');
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
