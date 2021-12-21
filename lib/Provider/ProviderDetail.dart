import 'package:flutter/material.dart';
import 'package:state_management_app/Modals/Movies.dart';


class ProviderDetail with ChangeNotifier{
  final List<Movies> _movie = [
    Movies(description: 'helo',
        id: 'm1',
        image: 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
        title: 'red hood'),
    Movies(description: 'heloo',
        id: 'm2',
        image: 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
        title: 'yellow hood'),
    Movies(description: 'helooo',
        id: 'm3',
        image: 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
        title: 'pink hood')

  ]; // making it const so any canges wont affect it

// make a getter to get a copy of list above
// so to access it from here without affeting main list or
//  cant be eddited anywhere else in it app

  List<Movies> get itmes {
    return [..._movie];

  }
  void letOtherKnow (){
    notifyListeners();
  }
}