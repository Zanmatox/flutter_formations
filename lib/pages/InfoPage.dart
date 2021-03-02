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

int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Détails du cours"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            _buildHeader(),
            SizedBox(height: 15),
            _buildInfos(),
            SizedBox(height: 15),
            _buildBtn(),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedTab,
        onTap: (int index) {
          setState(() {
            selectedTab = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline),
            title: Text("Infos")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text("Avis")
          ),
          
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return new Container(
      child: Image.asset(widget.cours.image),
    );
  }

    Widget _buildInfos() {
    return new Container(
      child: Column(
        children: <Widget>[
          Text(
            widget.cours.name,
            style: TextStyle(fontSize: 26),
          ),
          SizedBox(height: 15),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(widget.cours.description),
          ),
          SizedBox(height: 15),
          Text("19.99 €")
        ],)
    );
  }
    Widget _buildBtn() {
    return new Container(
      child: RaisedButton(
        onPressed: () {
          log("TODO : Bouton acheter");
        },
        child: Text("ACHETER"),
      ),
    );
  }

}