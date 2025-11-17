import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';
import 'product_details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(
        id: '1',
        name: 'SMH Hair Oil',
        description: 'A nourishing hair oil for all hair types. Made with a blend of natural oils to promote hair growth and shine.',
        price: 25.99,
        imageUrl: 'https://via.placeholder.com/150/FFC0CB/000000?Text=SMH+Hair+Oil',
      ),
      Product(
        id: '2',
        name: 'SMH Shampoo',
        description: 'A gentle cleansing shampoo that removes impurities without stripping natural oils. Suitable for daily use.',
        price: 18.50,
        imageUrl: 'https://via.placeholder.com/150/FFB6C1/000000?Text=SMH+Shampoo',
      ),
      Product(
        id: '3',
        name: 'SMH Conditioner',
        description: 'A rich and creamy conditioner that detangles, softens, and hydrates hair, leaving it smooth and manageable.',
        price: 19.99,
        imageUrl: 'https://via.placeholder.com/150/FF69B4/FFFFFF?Text=SMH+Conditioner',
      ),
      Product(
        id: '4',
        name: 'SMH Hair Mask',
        description: 'An intensive treatment hair mask to repair and restore damaged hair. Use weekly for best results.',
        price: 32.00,
        imageUrl: 'https://via.placeholder.com/150/DB7093/FFFFFF?Text=SMH+Hair+Mask',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('SMH Hair Products'),
        centerTitle: true,
        backgroundColor: Colors.pink.shade100,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (ctx, i) => ProductCard(
          product: products[i],
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductDetailsPage(product: products[i]),
              ),
            );
          },
        ),
      ),
    );
  }
}
