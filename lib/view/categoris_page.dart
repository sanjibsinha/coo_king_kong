import 'package:coo_king_kong/model/dummy_categories.dart';
import 'package:coo_king_kong/controller/category_item.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(15.0),
      children: dummyCategories
          .map(
            (e) => CategoryItem(id: e.id, title: e.title, color: e.color),
          )
          .toList(),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        childAspectRatio: 1.50,
        mainAxisSpacing: 20.0,
        crossAxisSpacing: 20.0,
      ),
    );
  }
}
