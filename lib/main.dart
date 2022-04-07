import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}

// catatan.
class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
// final wordPair = WordPair.random();
  String randomWord = WordPair.random().asCamelCase;

// ini adalah fungsi untuk merubah kata
  void pushRandomWord() {
    print('kepanggil enggak ya?');
    randomWord = WordPair.random().asCamelCase;
    print('new word: $randomWord');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Belajar Flutter',
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Center(
              child: Text(
                randomWord,
              ),
            ),
            TextButton.icon(
              onPressed: pushRandomWord,
              icon: const Icon(Icons.send),
              label: const Text('Ubah Kata'),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
            ),
          ],
        ),
      ),
    );
  }
}
