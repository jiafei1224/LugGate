import 'package:flutter/material.dart';

class Output extends StatefulWidget {
  @override
  _OutputState createState() => _OutputState();
}

class _OutputState extends State<Output> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Help Yourself!',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new MyHomePage(swap: false),
    );
  }
}

class MyHomePage extends StatefulWidget {

  final bool swap;

  MyHomePage({Key key, this.swap}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool swap = false;

  @override
  void initState() {
    swap = widget.swap;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var buttonTile = new ListTile(
      title: new RaisedButton(
          child: new Text("Show Result",style: TextStyle(color: Colors.red ),),
          onPressed: (){
            setState((){
              swap = !swap;
            });
          }
      ),
    );

    Widget swapWidget;
    if (swap) {
      swapWidget = new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
            width: MediaQuery.of(context).size.width,
            height: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                        image: AssetImage('assets/home.png')
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text ("Please stay home as much as possible and wash you hands regularly!If you begin feeling any symptoms, please see a doctor.",style: TextStyle(fontSize: 24),),
            ),
          ],
      );
    } else {
      swapWidget = new Container(
        width: MediaQuery.of(context).size.width,
        height: 400,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/abcd.gif')
          ),
        ),
      );
    }

    var swapTile = new ListTile(
      title: swapWidget,
    );


    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(' Help Yourself!',style: TextStyle(fontSize: 30,
            fontFamily: 'ChelseaMarkeet'
        ),),
        centerTitle: true,

      ),
      body: new ListView(
        children: <Widget>[
          buttonTile,
          swapTile,
        ],
      ),
    );
  }

}
