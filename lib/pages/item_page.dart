import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigasi_rute/models/item.dart';

class ItemPage extends StatelessWidget {
  final Item tempItem;

  const ItemPage({Key key, this.tempItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Detail Stock " + tempItem.name),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Card(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Code : " + "\n\n" + tempItem.name,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Price : " + "\n\n" + tempItem.price.toString(),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Size : " + "\n\n" + tempItem.size,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Qty : " + "\n\n" + tempItem.qty.toString(),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Column(
                children: [],
              )),
              SizedBox(
                width: 500,
                child: RaisedButton(
                  color: Colors.blue,
                  padding: EdgeInsets.all(10),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Back Home Page',
                        style: TextStyle(color: Colors.white),
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
