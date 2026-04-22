import 'package:flutter/material.dart';
import 'detail_screen.dart';

class Exercise1HomeScreen extends StatelessWidget {
  const Exercise1HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercise 1 - HomeScreen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailScreen(),
              ),
            );
          },
          child: const Text('Go to Detail Screen'),
        ),
      ),
    );
  }
}