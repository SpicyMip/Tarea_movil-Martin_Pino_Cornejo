//La nueva Card esta en la linea 149, y es uno de mis juegos Favoritos
import 'package:flutter/material.dart';
import 'package:android_intent/android_intent.dart';

void main() {
  runApp(MyApp());
}

void displayMapInGoogleMaps({int zoomLevel = 12}) {
  final AndroidIntent intent = AndroidIntent(
      action: 'action_view',
      data: Uri.encodeFull('geo:-34.1330270,-71.5723272,4z=$zoomLevel'),
      package: 'com.google.android.apps.maps');
  intent.launch();
}

void displayTwitter() {
  final AndroidIntent intent = AndroidIntent(
      action: 'action_view',
      data: Uri.encodeFull('https://twitter.com/m1710pc'),
      package: 'com.twitter.android');
  intent.launch();
}

void opengoogle() {
  final AndroidIntent intent = AndroidIntent(
      action: 'action_view',
      data: Uri.encodeFull('https://darksouls.fandom.com/es/wiki/Dark_Souls'),
      package: 'com.android.chrome');
  intent.launch();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/martin.png'),
              ),
              Text(
                'Martín Pino Cornejo',
                style: TextStyle(
                  fontSize: 40.0,
                  fontFamily: 'Computerfont',
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Estudiante de Ingenieria en Informatica',
                style: TextStyle(
                  fontSize: 22.0,
                  fontFamily: 'Computerfont',
                  color: Colors.black54,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                  title: Text(
                    '+56 9 44892015',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.green,
                  ),
                  title: Text(
                    'martin.pino@usm.cl',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                    leading: Text(
                      '@',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    title: Text(
                      'm1710pc',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18.0,
                      ),
                    ),
                    onTap: () {
                      displayTwitter();
                    }),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                    leading: Icon(
                      Icons.directions,
                      color: Colors.green,
                    ),
                    title: Text(
                      'Pulin S/N',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18.0,
                      ),
                    ),
                    onTap: () {
                      displayMapInGoogleMaps();
                    }),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                    leading: Icon(
                      Icons.videogame_asset,
                      color: Colors.green,
                    ),
                    title: Text(
                      'Dark Souls',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18.0,
                      ),
                    ),
                    onTap: () {
                      opengoogle();
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
