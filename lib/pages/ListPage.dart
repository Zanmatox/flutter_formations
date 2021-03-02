import 'package:flutter/material.dart';
import 'dart:developer';

import '../Cours.dart';

// Liste des formations
final crs = List<Cours>.generate(10, (i) => Cours("Cours logiciel $i", "Lorem ipsom dolor sit amet $i.","images/$i.jpg"));
class ListPage extends StatefulWidget {
  @override 
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liste des formation"),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          // Design liste
          Cours cours = new Cours(crs[index].name, crs[index].description, crs[index].image);
          return Container(
            height: 70,
            child: ListTile(
              onTap: () {
                // TODO : Naviguer vers page cours cliqué

              },
              leading: Image(
                image: AssetImage(cours.image),
              ),
              title: Text(cours.name),
              subtitle: Row(children: <Widget>[
                Text("29.99€ - 4.5"),
                Icon(Icons.star, size: 15,)

              ],),
            ),
          );
        }, 
        separatorBuilder: (BuildContext contexte, int index) => Divider(), 
        itemCount: crs.length
    ),
    );
  }
}