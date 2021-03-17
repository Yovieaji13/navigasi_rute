import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigasi_rute/models/item.dart';
import 'item_page.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Tees Anchor', price: 125000, size: 'L', qty: 100),
    Item(name: 'Tees Basic', price: 350000, size: 'M', qty: 50),
    Item(name: 'Tees Daisy', price: 110000, size: 'XL', qty: 200),
    Item(name: 'Tees Ashed', price: 35000, size: 'M', qty: 1000)
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stock Morfeen Store 1"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ItemPage(tempItem: item)),
                  );
                },
                child: Card(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text("Code : " + "\n\n" + item.name,
                          textAlign: TextAlign.left,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Qty Stock : " + "\n\n" + item.qty.toString(),
                            textAlign: TextAlign.end,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
