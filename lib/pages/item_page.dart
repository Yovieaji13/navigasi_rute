import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigasi_rute/models/item.dart';

class ItemPage extends StatelessWidget{
  final Item tempItem;

  const ItemPage({Key key, this.tempItem}) : super(key: key);
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Text(
            tempItem.name + " ; " + tempItem.price.toString(),
          ),
        ),
      ),
    );
  }
}