import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'Movies.dart';

class ItemGrid extends StatelessWidget {
  // final String url;
  // final String title;
  // final String id;
  // const ItemGrid({Key? key, required this.url, required this.title, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final individualproduct= Provider.of<Movies>(context);
    final fav = individualproduct.favStatus();

    return GridTile(
        header: Text(individualproduct.title),
        footer:  GridTileBar(
          backgroundColor: Colors.black12,
          leading: GestureDetector(
              onTap: (){
                individualproduct.favStatus();
              },
              child: individualproduct.isFavourite?Icon(Icons.favorite_border):Icon(Icons.favorite)),
          trailing: Icon(Icons.add_shopping_cart),
        ),
        child: GestureDetector(
            onTap: (){
              Navigator.pushNamed(context,'/detail',arguments: individualproduct.id);
            },
            child: Image.network(individualproduct.image)));
  }
}
