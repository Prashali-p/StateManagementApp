import 'package:flutter/material.dart';

class Movies with ChangeNotifier {
  final String description;
  final String id;
  final String title;
  final String image; // final used so the value will be constant at run time.
  bool isFavourite; // not final because value can be false or true at run time
  Movies({required this.description,required this.id,required this.image,required this.title, this.isFavourite=false});
  // named arguments passed in Movies method /function.

  void favStatus (){
    isFavourite ==! isFavourite;
    notifyListeners();      // equivalent to set state

  }
}