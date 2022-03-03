import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Celebrity info'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        shrinkWrap: true, padding: EdgeInsets.fromLTRB(2, 5, 2, 5),
        children: <Widget>[
          Celebrity(
            name: "IU",
            age: 28,
            image: "iu.jpeg",
          ),
      Celebrity(
        name: "Lisa",
        age: 24,
        image: "Lisa.jpg",
      ),
          Celebrity(
            name: "IU",
            age: 28,
            image: "iu.jpeg",
          ),
          Celebrity(
            name: "Lisa",
            age: 24,
            image: "Lisa.jpg",
          ),
          Celebrity(
            name: "IU",
            age: 28,
            image: "iu.jpeg",
          ),
          Celebrity(
            name: "Lisa",
            age: 24,
            image: "Lisa.jpg",
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Celebrity extends StatelessWidget{
  Celebrity({Key? key, required this.name, required this.age, required this.image}) : super(key: key);

  final String name;
  final int age;
  final String image;

  Widget build(BuildContext){
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0), height: 100,
      child: Card(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
          Image.asset("assets/" +image, fit: BoxFit.fill, width: 150,), Expanded(
              child: Container(
                  padding: EdgeInsets.all(5), child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(this.name, style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Age: " + this.age.toString()),
                ],
              )
              )
          )
        ]

        ),
      ),
    );
  }
}