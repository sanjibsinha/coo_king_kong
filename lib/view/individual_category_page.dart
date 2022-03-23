import 'package:flutter/material.dart';

class IndividualCategoryPage extends StatelessWidget {
  const IndividualCategoryPage({
    Key? key,
    required this.id,
    required this.title,
    required this.color,
  }) : super(key: key);

  final String id;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          color: color,
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
    );
  }
}
