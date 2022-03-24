import 'package:flutter/material.dart';

import '../model/dummy_foods.dart';

class IndividualCategoryPage extends StatelessWidget {
  const IndividualCategoryPage({
    Key? key,
  }) : super(key: key);

  static const routeName = '/individual-category-page';

  @override
  Widget build(BuildContext context) {
    final routeArguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    final id = routeArguments['id'];
    final Object? title = routeArguments['title'];
    final Color? color = routeArguments['color'] as Color;
    final categoryMeals = dummyLorenIpsumLorenIpsumFood.where((food) {
      return food.categoryID.contains(id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(title.toString()),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Container(
            padding: const EdgeInsets.all(18.0),
            color: color,
            child: Text(
              categoryMeals[index].title,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
