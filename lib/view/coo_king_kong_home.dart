import 'package:flutter/material.dart';

import 'categoris_page.dart';

class CooKingKongHome extends StatelessWidget {
  const CooKingKongHome({Key? key}) : super(key: key);
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CooKingKong Recipe',
          //style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: const CategoriesPage(),
    );
  }
}
