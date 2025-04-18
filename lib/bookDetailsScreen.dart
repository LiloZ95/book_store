import 'package:flutter/material.dart';
import 'book.dart';

class BookDetailsPage extends StatelessWidget {
  final Book book;

  const BookDetailsPage({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(book.title),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Book cover
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  book.imageUrl,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Title & author
            Text(
              book.title,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'by ${book.author}',
              style: TextStyle(fontSize: 18, color: Colors.black54),
            ),
            const SizedBox(height: 16),

            // Price
            Text(
              '\$${book.price.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 24),

            // Description
            Text(
              book.description,
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 80), // Space for button
          ],
        ),
      ),

      // Buy Button Fixed at Bottom
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        color: Colors.white,
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              // Add your purchase logic here
            },
            child: Text('Buy Now'),
          ),
        ),
      ),
    );
  }
}
