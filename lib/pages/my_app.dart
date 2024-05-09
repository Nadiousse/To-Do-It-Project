import 'package:flutter/material.dart';
import 'package:to_do_it_project/pages/to_do_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do It',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const ToDoPage(title: 'To Do It'),
    );
  }
}