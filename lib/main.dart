import 'package:flutter/material.dart';


import 'screen/feed_screen.dart';
import 'screen/onboarding_screen.dart';
import 'screen/plant_shop_screen.dart';
import 'screen/search_screen.dart';
import 'screen/story_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter UI Home"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
            RaisedButton(
            color: Colors.red,
            child: Text('Flutter Plant Shop UI Speed Code'),
            onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ShopScreen()),
            );
          },
          ),
          RaisedButton(
            color: Colors.red,
            child: Text('Flutter Travel Booking UI Speed Code'),
            onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SearchScreen()),
            );
          },
          ),
          RaisedButton(
            color: Colors.red,
            child: Text('Flutter Instagram UI Redesign Speed Code'),
            onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FeedScreen()),
            );
          },
          ),
          RaisedButton(
            color: Colors.red,
            child: Text('Flutter Onboarding UI Speed Code'),
            onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OnboardingScreen()),
            );
          },
          ),
          RaisedButton(
            color: Colors.red,
            child: Text('Flutter Story UI Speed Code'),
            onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StoryScreen()),
            );
          },
          ),
        ],
        
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
