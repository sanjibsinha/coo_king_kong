import 'package:flutter/material.dart';

class IndividualSellerPage extends StatelessWidget {
  const IndividualSellerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Individual Seller page',
        ),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          child: Text(
            'Individual Seller page',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
      ),
    );
  }
}
