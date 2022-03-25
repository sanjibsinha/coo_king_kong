import 'package:flutter/material.dart';

import '../controller/food_item.dart';
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
    final categoryMeals = dummyLorenIpsumLorenIpsumFood.where((food) {
      return food.categoryID.contains(id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(title.toString()),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return FoodItem(
            id: categoryMeals[index].id,
            title: categoryMeals[index].title,
            imageUrl: categoryMeals[index].imageUrl,
            duration: categoryMeals[index].duration,
            complexity: categoryMeals[index].complexity,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
