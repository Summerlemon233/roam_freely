import 'package:flutter/material.dart';
import 'package:material_floating_search_bar_2/material_floating_search_bar_2.dart';

class store extends StatefulWidget {
  const store({Key? key}) : super(key: key);

  @override
  State<store> createState() => _storeState();
}

class _storeState extends State<store> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.8,
      alignment: Alignment.topCenter,
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: ListView(children: [

        //TODO
        ListTile(
          leading: Icon(Icons.shopping_cart),
          title: Text("购物车"),
          shape: StadiumBorder(),
        ),
        Divider(),
        Text("分类",style: TextStyle(fontSize: 30),),
        Divider(),

      ]),
    );
  }
}
