import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chat App",
      home: HomePage(),
    );
  }
}
