import 'package:flutter/material.dart';
import 'dart:developer';

import '../Cours.dart';

class InfosPage extends StatefulWidget {
  final Cours cours;

  const InfosPage({Key key, this.cours}) : super(key: key);
  @override
  _InfosPageState createState() => _InfosPageState();
}

class _InfosPageState extends State<InfosPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Infos de " + widget.cours.name),
    );
  }
}