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
            SizedBox(height: 15),
            _buildTitle(),
            _buildForm(),
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

//Création du titre
Widget _buildTitle() {
  return new Center(
    child:Text(
      "Connectez-vous !",
      style: TextStyle(fontSize: 25),     
      ),
  );
}
//Création formulaire
Widget _buildForm() {
  return new Container(
    // Padding
    padding: EdgeInsets.all(15),
    child: new Column(
      children: <Widget>[
        new Container(
          child: TextFormField(
            // TODO : Gérer le contenu du form
            decoration: InputDecoration(
              labelText: "Votre émail : "
            ),
          ),
          ),
          SizedBox(height: 10),
          new Container(
          child: TextFormField(
            // TODO : Gérer le contenu du form
            decoration: InputDecoration(
              labelText: "Votre mot de passe : "
            ),
            obscureText: true,
          ),
          ),
          SizedBox(height: 15),
          new Container(
            child: RaisedButton(
              child: Text("Login"),
              color: Colors.red, 
              onPressed: () {
                // TODO : Gérer le click
              },
              ),
          ),
          new Container(
            child: FlatButton(
              child: Text("Mot de passe oublié ?"),
              onPressed: () {
                // TODO : a gerer
              },
              ),
          )
      ],
    )
  );
} 
}