import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _displayText = 'Hello World';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome to Flutter',
          style: TextStyle(
            color: Colors.red,
            decoration: TextDecoration.underline,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
      body: Center(
        child: Text(_displayText),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _displayText = 'Button has clicked';
          });
        },
        child: Icon(Icons.add),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: CircleAvatar(
                child: Image(image: AssetImage('assets/logo.png')),
                radius: 50,
              ),
            ),
            ListTile(title: Text("Home")),
            ListTile(title: Text("About")),
            ListTile(title: Text("Contact")),
          ],
        ),
      ),
    );
  }
}