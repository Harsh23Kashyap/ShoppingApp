import 'package:basic_app/models/catalog.dart';
import "package:flutter/material.dart";

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.8,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(11.0),
      ),
      child: ListTile(
        onTap: () {
          print(item.name + " pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          ("₹" + item.price.toString()),
          textScaleFactor: 1.5,
          style:
              TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
