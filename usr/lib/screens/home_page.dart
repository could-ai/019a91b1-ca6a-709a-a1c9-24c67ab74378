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
        name: 'SMH Organic Hair Oil',
        description:
            'SMH Naturals Organic Hair Oil for natural hair growth and strengthening. Infused with 18 natural ingredients for strong & healthier hair.',
        price: 27.50,
        imageUrl: 'https://i.ibb.co/680g2r6/product.png',
      ),
      Product(
        id: '2',
        name: 'SMH Shampoo',
        description:
            'A gentle cleansing shampoo that removes impurities without stripping natural oils. Suitable for daily use.',
        price: 18.50,
        imageUrl: 'https://i.ibb.co/2S7x11V/shampoo.png',
      ),
      Product(
        id: '3',
        name: 'SMH Conditioner',
        description:
            'A rich and creamy conditioner that detangles, softens, and hydrates hair, leaving it smooth and manageable.',
        price: 19.99,
        imageUrl: 'https://i.ibb.co/zV9j9z4/conditioner.png',
      ),
      Product(
        id: '4',
        name: 'SMH Hair Mask',
        description:
            'An intensive treatment hair mask to repair and restore damaged hair. Use weekly for best results.',
        price: 32.00,
        imageUrl: 'https://i.ibb.co/yBNtqgH/hairmask.png',
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
