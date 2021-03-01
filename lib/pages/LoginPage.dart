import 'package:flutter/material.dart';
import 'dart:developer';

import 'ListPage.dart';

class LoginPage extends StatelessWidget{

  String mail = "";
  String pass = "";


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
            _buildForm(context),
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
Widget _buildForm(BuildContext context) {
  return new Container(
    // Padding
    padding: EdgeInsets.all(15),
    child: new Column(
      children: <Widget>[
        new Container(
          child: TextFormField(
            // Recuperer email entré par l'user
            onChanged: (newText) { mail = newText;},
            decoration: InputDecoration(
              labelText: "Votre émail : "
            ),
          ),
          ),
          SizedBox(height: 10),
          new Container(
          child: TextFormField(
            // Recuperer le mdp
            onChanged: (newText) { pass = newText;},
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
                // TODO : Fonction de connexion
                if(mail == "123" && pass == "123")
                {
                  // TODO : Vérification BDD
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => ListPage())
                    );
                }
                else
                {
                  log("Erreur identifiants");
                }
              },
              ),
          ),
          new Container(
            child: FlatButton(
              child: Text("Mot de passe oublié ?"),
              onPressed: () {
                log('Mot de passe oublié !');
              },
              ),
          )
      ],
    )
  );
} 
}