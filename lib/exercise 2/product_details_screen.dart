import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  final String productName;
  final String productPrice;
  final String productImage;

  const ProductDetailsScreen({
    super.key,
    required this.productName,
    required this.productPrice,
    required this.productImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      appBar: AppBar(
        title: const Text('Product Details'),
        centerTitle: true,
        backgroundColor: const Color(0xff121212),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // 🔹 صورة المنتج
            Center(
  child: Container(
    height: 240,
    width: 280,
    decoration: BoxDecoration(
      color: const Color(0xffF2F2F2),
      borderRadius: BorderRadius.circular(20),
      boxShadow: const [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10,
          offset: Offset(0, 4),
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        productImage,
        fit: BoxFit.contain,
      ),
    ),
  ),
),

            const SizedBox(height: 25),

            // 🔹 اسم المنتج
            Text(
              productName,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 10),

            // 🔹 السعر
            Text(
              productPrice,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white70,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 20),

            // 🔹 وصف بسيط
            const Text(
              'This is a high-quality product with modern design and excellent performance.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white70,
              ),
            ),

            const Spacer(),

            // 🔹 زر
            SizedBox(
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, 'Product Selected');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  elevation: 0,
                  shadowColor: Colors.grey,
                ).copyWith(
                  elevation: WidgetStateProperty.all(6),
                ),
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}