import 'package:flutter/material.dart';
import 'product_details_screen.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  final List<Map<String, dynamic>> products = const [
    {
      'name': 'Laptop',
      'price': '1200 \$',
      'image': 'assets/laptop.jpg',
    },
    {
      'name': 'Camera',
      'price': '800 \$',
      'image': 'assets/camera.jpg',
    },
  ];

  Future<void> _openDetails(
    BuildContext context,
    String productName,
    String productPrice,
    String productImage,
  ) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailsScreen(
          productName: productName,
          productPrice: productPrice,
          productImage: productImage,
        ),
      ),
    );

    if (!context.mounted) return;

    if (result != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(result.toString()),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.black,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      appBar: AppBar(
        title: const Text('Product List'),
        centerTitle: true,
        backgroundColor: const Color(0xff121212),
        foregroundColor: Colors.white,
        elevation: 0,
      ),

      // ✅ أهم تعديل هنا
      body: Center(
        child: SizedBox(
          width: 700, // 👈 يحدد عرض الصفحة في النص
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Choose a product',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Tap the button to view details',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 20),

                Expanded(
                  child: Center(
                    child: SizedBox(
                      height: 320,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: products.length,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 24),
                        itemBuilder: (context, index) {
                          final product = products[index];

                          return Container(
                            width: 280,
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              color: const Color(0xff1A1A1A),
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: 155,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffF2F2F2),
                                    borderRadius: BorderRadius.circular(18),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 10,
                                        offset: Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(18),
                                    child: Image.asset(
                                      product['image'],
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 14),
                                Text(
                                  product['name'],
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  product['price'],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white70,
                                  ),
                                ),
                                const SizedBox(height: 16),
                                SizedBox(
                                  width: 150,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      _openDetails(
                                        context,
                                        product['name'],
                                        product['price'],
                                        product['image'],
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      foregroundColor: Colors.white,
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 12,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(14),
                                      ),
                                      elevation: 0,
                                      shadowColor: Colors.grey,
                                    ).copyWith(
                                      elevation:
                                          WidgetStateProperty.all(6),
                                    ),
                                    child: const Text(
                                      'View Details',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}