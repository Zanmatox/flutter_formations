import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page de login"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            _buildHeader(),
            _buildTitle(),
          ],
        ),
      ),
    );
  }
//Fonction création header page login
Widget _buildHeader() {
  return new Container(
    child: Image.network("http://www.cerfi.ch/Htdocs/Images/Pictures/puid_e2ad9412-cca4-4eaf-961c-570cf0f342eb_3354.jpg"),
  );
}

Widget _buildTitle() {
  return new Center(
    child:Text(
      "Connectez-vous !",
      style: TextStyle(fontSize: 25),     
      ),
  );
}
}