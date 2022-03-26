import 'package:flutter/material.dart';

import '../model/food.dart';
import '/view/individual_food_page.dart';
import '/view/individual_seller_page.dart';

class FoodItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;

  const FoodItem({
    Key? key,
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.complexity,
    required this.duration,
  }) : super(key: key);

  String get complexityText {
    switch (complexity) {
      case Complexity.simple:
        return 'Simple';
      case Complexity.complex:
        return 'Complex';
      default:
        return 'Unknown';
    }
  }

  void selectMeal(BuildContext context) {
    Navigator.of(context).pushNamed(
      IndiividualFoodPage.routeName,
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      const Icon(
                        Icons.schedule,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text('$duration min'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      const Icon(
                        Icons.work,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(complexityText),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const IndividualSellerPage(),
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.manage_search_rounded,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
