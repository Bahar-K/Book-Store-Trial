import 'package:book_store_app/views/bottom_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Book Store",
      debugShowCheckedModeBanner: false,
      home: const ButtomBar(),
    );
  }
}
