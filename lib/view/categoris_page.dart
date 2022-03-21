import 'package:coo_king_kong/model/dummy_categories.dart';
import 'package:coo_king_kong/view/category_item.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      children: dummyCategories
          .map(
            (e) => CategoryItem(title: e.title, color: e.color),
          )
          .toList(),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 1.50,
        mainAxisSpacing: 20.0,
        crossAxisSpacing: 20.0,
      ),
    );
  }
}
