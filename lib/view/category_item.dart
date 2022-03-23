import 'package:flutter/material.dart';

import 'individual_category_page.dart';

/// TODO: this page displays each category by name and color
/// we will add a method that will take us to individual
/// category page

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.id,
    required this.title,
    required this.color,
  }) : super(key: key);

  final String id;
  final String title;
  final Color color;

  void selectCategory(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return IndividualCategoryPage(
            id: id,
            title: title,
            color: color,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        //margin: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleSmall,
            textAlign: TextAlign.center,
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.6),
              color,
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
