import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_app/Provider/ProviderDetail.dart';


class DetailHomePage extends StatefulWidget {
  // final String title;
  const DetailHomePage({Key? key, }) : super(key: key);

  @override
  _DetailHomePageState createState() => _DetailHomePageState();
}

class _DetailHomePageState extends State<DetailHomePage> {
  @override
  Widget build(BuildContext context) {

    final productId =ModalRoute.of(context)?.settings.arguments as String; // using named route so to send movie details through it rather thn passing arguments
    final product = Provider.of<ProviderDetail>(context).itmes.firstWhere((element) =>element.id== productId);
    return Scaffold(
      appBar: AppBar(title: Text(product.title),),

    );
  }
}
