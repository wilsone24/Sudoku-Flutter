import 'package:flutter/material.dart';

import 'pages/sudoku.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Sudoku',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 178, 228, 227)),
        useMaterial3: true,
      ),
      home: const Sudoku(),
    );
  }
}




