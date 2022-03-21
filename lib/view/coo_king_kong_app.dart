import 'package:flutter/material.dart';

import 'coo_king_kong_home.dart';

class CooKingKongApp extends StatelessWidget {
  const CooKingKongApp({Key? key}) : super(key: key);

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
