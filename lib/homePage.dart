import 'package:flutter/material.dart';
import 'book.dart';
import 'book_card.dart';
import 'mockData.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedCategory = 'All';

  List<Book> get filteredBooks {
    if (selectedCategory == 'All') return allBooks;
    return allBooks.where((book) => book.category == selectedCategory).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: Text('Bookstore'),
        leading: Icon(Icons.menu_book_rounded),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome Header
            Text(
              'Hi there, 👋',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Ready to explore some books?',
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(height: 16),

            // Category Chips
            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  final isSelected = selectedCategory == category;

                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: ChoiceChip(
                      label: Text(category),
                      selected: isSelected,
                      onSelected: (_) {
                        setState(() {
                          selectedCategory = category;
                        });
                      },
                      selectedColor: Colors.deepPurple,
                      backgroundColor: Colors.grey[300],
                      labelStyle: TextStyle(
                        color: isSelected ? Colors.white : Colors.black87,
                        fontWeight:
                            isSelected ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16),

            // Book List
            Expanded(
              child: ListView.builder(
                itemCount: filteredBooks.length,
                itemBuilder: (context, index) {
                  return BookCard(book: filteredBooks[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
