import 'package:flutter/material.dart';

import 'list.dart';
import 'listview.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ALHAMDULILLAH',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MylistView(title: 'FLUTTER DEVELOPER\'S'),
    );
  }
}
