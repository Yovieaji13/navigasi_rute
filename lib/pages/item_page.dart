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
        appBar: AppBar(
          title: Text("Detail Stock " + tempItem.name), 
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                "Code : " + tempItem.name + "\n\n" + "Price : " + tempItem.price.toString()
                 + "\n\n" + "Size : " + tempItem.size,
              ),
              
              SizedBox(
                width: 500,
                child: RaisedButton(
                  color: Colors.blue,
                  padding: EdgeInsets.all(10),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Back Home Page', style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ], 
          ),
        ),
      ),
    );
  }
}