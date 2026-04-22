import 'package:flutter/material.dart';
import 'exercise 1/home_screen.dart';
import 'exercise 2/product_list_screen.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Assignment'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'اختر التمرين',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Exercise1HomeScreen(),
                    ),
                  );
                },
                child: const Text('تمرين 1: Basic Stack Navigation'),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductListScreen(),
                    ),
                  );
                },
                child: const Text('تمرين 2: Passing and Returning Data'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}