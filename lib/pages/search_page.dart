import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key, required this.id});

  final String id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Search Question'),
            const SizedBox(height: 16.0),
            Text('Id: $id'),
          ],
        ),
      ),
    );
  }
}
