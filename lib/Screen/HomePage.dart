import 'package:flutter/material.dart';
import 'package:state_management_app/Modals/MovieView.dart';

import '../Modals/Movies.dart';

class HomePage extends StatelessWidget{

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Scaffold bcoz it will fill entire screen
    return Scaffold(
      appBar: AppBar(title: Text('Shop'),),
      body: const Padding(
        padding:  EdgeInsets.all(8.0),// if const it wont rebuild while statechange which save time and performance
        child: MoviesView(),
      ),
    );
  }
}

