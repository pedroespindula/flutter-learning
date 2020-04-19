import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class _MyApp extends State<MyApp> {
  WordPair wordPair = WordPair.random();

  void updateWordPair() {
    setState(() {
      wordPair = WordPair.random();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(wordPair.asPascalCase)
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: updateWordPair)
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyApp createState() {
    return _MyApp();
  }
}
