import 'package:flutter/material.dart';

//Qui è il punto da cui tutto parte
void main() {
  //Funzione principale che carica il codice che lancia l'app
  runApp(MyApp());
}

//Widget senza stato
class MyApp extends StatelessWidget {
  //build: richiamato ogni volta che viene creata una nuova istanza di questo widget attraverso la definizione di MyApp()
  //Questo metodo di compilazione ouò essere inoltre richiamato oqni qual volta apportiamo una modifica al nostro codice
  //e consente l'hot reload a Flutter
  @override
  Widget build(BuildContext context) {
    //Un'app material sarà il valore di ritorno
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        //SafeArea è il widget che fa si che i widget racchiusi in esso rispettino i vincoli dell'interfaccia grafica
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage:
                    AssetImage('assets/images/userProfileImage.png'),
              ),
              Text(
                'Mariano Gelsomino',
                style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'),
              ),
              Text('SOFTWARE  ENGINEER',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black87,
                      fontFamily: 'SourceSansPro',
                      letterSpacing: 2)),
              SizedBox(
                height: 20,
                width: 280.0,
                child: Divider(color: Colors.black),
              ),
              Card(
                color: Colors.black12,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
                child: Padding(
                    padding: EdgeInsets.all(1.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone_rounded,
                        color: Colors.white,
                      ),
                      title: Text(
                        '+39 3491212903',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'SourceSansPro'),
                      ),
                    )),
              ),
              Card(
                color: Colors.black12,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.symmetric(horizontal: 25.0),
                child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail_rounded,
                      color: Colors.white,
                    ),
                    title: Text(
                      'email@example.com',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'SourceSansPro'),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
