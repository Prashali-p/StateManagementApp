import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'Provider/ProviderDetail.dart';
import 'Screen/DetailHomePage.dart';
import 'Screen/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx)=> ProviderDetail(),// instance of the class. wt change in this class rebuild the widget that use it
      child: MaterialApp(

        home: HomePage(),
        routes: {
          '/detail': (context) => const DetailHomePage(),
        },
      ),
    );
  }
}

