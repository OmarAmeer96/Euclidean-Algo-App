import 'package:euclidean_algo_task/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter GCD App',
      theme: ThemeData.dark(),
      home: const HomeView(title: 'GCD Calculator App'),
    );
  }
}
