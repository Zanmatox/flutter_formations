import 'package:flutter/material.dart';
import 'dart:developer';

import '../Cours.dart';

// Liste des formations
final crs = List<Cours>.generate(10, (i) => Cours("Cours logiciel $i", "Lorem ipsom dolor sit amet $i.","https://www.lecoindesentrepreneurs.fr/wp-content/uploads/2016/09/TVA-sur-les-activit%C3%A9s-denseignement-les-le%C3%A7ons-et-les-cours.jpg"));
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

        }, 
        separatorBuilder: (BuildContext contexte, int index) => Divider(), 
        itemCount: crs.length
    ),
    );
  }
}