import 'package:book_store/signInPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BookstoreApp());
}

class BookstoreApp extends StatelessWidget {
  const BookstoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bookstore',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SignInPage(), // Start from Sign In
      debugShowCheckedModeBanner: false,
    );
  }
}
