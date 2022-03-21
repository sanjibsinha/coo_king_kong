import 'package:flutter/material.dart';
import 'view/categoris_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CooKingKongHome(),
    );
  }
}

class CooKingKongHome extends StatefulWidget {
  const CooKingKongHome({Key? key}) : super(key: key);

  @override
  State<CooKingKongHome> createState() => _CooKingKongHomeState();
}

class _CooKingKongHomeState extends State<CooKingKongHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CooKingKong Recipe'),
      ),
      body: const CategoriesPage(),
    );
  }
}
