import 'package:flutter/material.dart';

void main() => runApp(FlutterBasic());

class FlutterBasic extends StatefulWidget {
  @override
  _FlutterBasicState createState() => _FlutterBasicState();
}

class _FlutterBasicState extends State<FlutterBasic> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Basic App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(accountName: Text('Habib Eng'), accountEmail: Text('habib@g.com'),decoration: BoxDecoration(
                color: Colors.blue
            ),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://pbs.twimg.com/profile_images/1066554347742326784/JolNIOdt_400x400.jpg")),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.card_travel),
              title: Text("Travel"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Help"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(title: Text("Flutter App")),
      body: Center(
        child: Text("Welcome to Fluitter basic app"),
      ),
    );
  }
}