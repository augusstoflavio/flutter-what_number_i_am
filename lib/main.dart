import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:what_number_am_i/pages/home/home_page.dart';
import 'package:what_number_am_i/pages/home/home_page_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => HomePageProvider(),
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
