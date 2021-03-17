import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigasi_rute/models/item.dart';
import 'item_page.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Tees Anchor', price: 125000, size: 'L'),
    Item(name: 'Windbraker Hopeles', price: 350000, size: 'M'),
    Item(name: 'Mesh Colleage', price: 110000, size: 'XL'),
    Item(name: 'Bandana Trapped', price: 35000, size: '17x17 cm')
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
                          child: Text(item.name),
                        ),
                        Expanded(
                          child: Container(
                            child: Text(
                              item.price.toString(),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            item.size,
                            textAlign: TextAlign.end,
                          ),
                        ),
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
