import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_app/Provider/ProviderDetail.dart';
import 'ItemGrid.dart';
import 'Movies.dart';



class MoviesView extends StatelessWidget {
  const MoviesView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    //.of(context) is genaric method means u can provide brackets
    Provider.of<ProviderDetail>(context)   ;   // provider package connection with widget that needs. now
    final movies =  ProviderDetail().itmes;
    //only this build method rebuild
    return GridView.builder(
        itemCount: movies.length,
        itemBuilder: (context,index)=>
            ChangeNotifierProvider(
              create: (ctx) => movies[index] , // for individual movie
              child: ItemGrid(
                // title: movies[index].title,
                // url:movies[index].image,
                // id:movies[index].id,
              ),
            ),
        gridDelegate: const
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,//define structure of grid
          childAspectRatio: 3/2,
        ));
  }
}
