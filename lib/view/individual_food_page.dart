import 'package:flutter/material.dart';

class IndiividualFoodPage extends StatelessWidget {
  const IndiividualFoodPage({Key? key}) : super(key: key);
  static const routeName = '/food-detail';

  @override
  Widget build(BuildContext context) {
    final foodTitle = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(foodTitle),
      ),
      body: Center(
        child: Text('The Food Title - $foodTitle!'),
      ),
    );
  }
}
