import 'package:book_store/book.dart';

List<String> categories = ['All', 'Fiction', 'Science', 'History'];

List<Book> allBooks = [
  Book(
    title: 'The Alchemist',
    author: 'Paulo Coelho',
    category: 'Fiction',
    price: 9.99,
    imageUrl: 'https://m.media-amazon.com/images/I/71aFt4+OTOL.jpg',
    description:
        'A novel about dreams and destiny, following a shepherd\'s journey to find treasure.',
  ),
  Book(
    title: 'A Brief History of Time',
    author: 'Stephen Hawking',
    category: 'Science',
    price: 14.99,
    imageUrl:
        'https://m.media-amazon.com/images/I/41R1Z1yQYSL._SX342_SY445_.jpg',
    description:
        'An exploration of cosmology and physics from one of the world\'s greatest minds.',
  ),
  Book(
    title: 'Sapiens',
    author: 'Yuval Noah Harari',
    category: 'History',
    price: 19.99,
    imageUrl:
        'https://m.media-amazon.com/images/I/41X5ZxNfFhL._SX331_BO1,204,203,200_.jpg',
    description:
        'A brief history of humankind, from evolution to modern civilization.',
  ),
  Book(
    title: '1984',
    author: 'George Orwell',
    category: 'Fiction',
    price: 11.99,
    imageUrl:
        'https://m.media-amazon.com/images/I/41yKjcEcl-L._SY445_SX342_.jpg',
    description:
        'A dystopian novel exploring surveillance and totalitarianism.',
  ),
  Book(
    title: 'Astrophysics for People in a Hurry',
    author: 'Neil deGrasse Tyson',
    category: 'Science',
    price: 12.99,
    imageUrl: 'https://m.media-amazon.com/images/I/81tFZ8B1xZL.jpg',
    description:
        'A witty and digestible guide to the universe for those short on time.',
  ),
  Book(
    title: 'Guns, Germs, and Steel',
    author: 'Jared Diamond',
    category: 'History',
    price: 16.50,
    imageUrl: 'https://m.media-amazon.com/images/I/71F3D3z-tIL.jpg',
    description:
        'A sweeping history of human societies and the forces that shaped them.',
  ),
];
