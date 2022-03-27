import 'package:coo_king_kong/view/individual_category_page.dart';
import 'package:coo_king_kong/view/individual_food_page.dart';
import 'package:coo_king_kong/view/individual_seller_page.dart';
import 'package:flutter/material.dart';

import 'coo_king_kong_home.dart';

class CooKingKongApp extends StatelessWidget {
  const CooKingKongApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  /// If only [routes] is given, it must include an entry for the
  ///[Navigator.defaultRouteName] (/), since that is the route used
  ///when the application is launched with an intent that specifies
  ///an otherwise unsupported route.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: useCustomTheme(),
      //home: const CooKingKongHome(),
      initialRoute: '/',
      routes: {
        '/': (context) => const CooKingKongHome(),
        IndividualCategoryPage.routeName: (context) =>
            const IndividualCategoryPage(),
        IndiividualFoodPage.routeName: (context) => const IndiividualFoodPage(),
      },
    );
  }

  ThemeData useCustomTheme() {
    return ThemeData(
      canvasColor: const Color.fromRGBO(255, 254, 229, 1),
      fontFamily: 'Raleway',
      textTheme: ThemeData.light().textTheme.copyWith(
            bodySmall: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyMedium: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            titleSmall: const TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            ),
            titleMedium: const TextStyle(
              fontSize: 30,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            ),
            titleLarge: const TextStyle(
              fontSize: 40,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            ),
          ),
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
          .copyWith(secondary: Colors.amber),
    );
  }
}
