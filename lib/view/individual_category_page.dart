import 'package:flutter/material.dart';

class IndividualCategoryPage extends StatelessWidget {
  const IndividualCategoryPage({
    Key? key,
  }) : super(key: key);

  static const routeName = '/individual-category-page';

  @override
  Widget build(BuildContext context) {
    final routeArguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    //final id = routeArguments['id'];
    final Object? title = routeArguments['title'];
    final Color? color = routeArguments['color'] as Color;

    return Scaffold(
      appBar: AppBar(
        title: Text(title.toString()),
      ),
      body: Center(
        child: Container(
          color: color,
          child: Text(
            title.toString(),
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
    );
  }
}
