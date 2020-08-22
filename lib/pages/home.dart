import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' LugGate',style: TextStyle(fontSize: 30,
            fontFamily: 'ChelseaMarkeet'
        ),),
        centerTitle: true,
        backgroundColor: Colors.blue[900]
        ,
      ),


      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/luggage.jpg')
              ),
            ),
          ),
          Container(
            color: Colors.blue[500],
            padding:EdgeInsets.all(10.0),
            child: FlatButton.icon(
              label: Container(

                  child: Text('Luggage Database',style: TextStyle(fontSize: 20,color: Colors.black),),
              ),
              icon: Icon(Icons. system_update_alt,color: Colors.black,),
              onPressed: () {
                Navigator.pushNamed(context, '/helplist');

              },
            ),

          ),
          Container(
            color: Colors.blue[400],
            padding:EdgeInsets.all(10.0),
            child: FlatButton.icon(
              label: Container(

                child: Text('Individual Incident Report',style: TextStyle(fontSize: 20,color: Colors.black),),
              ),
              icon: Icon(Icons. people_outline,color: Colors.black,),
              onPressed: () {
                Navigator.pushNamed(context, '/rep');
              },
            ),

          ),
          Container(
            color: Colors.blue[300],
            padding:EdgeInsets.all(9.5),
            child: FlatButton.icon(
              label: Container(

                child: Text('Operation Workflow',style: TextStyle(fontSize: 20,color: Colors.black),),
              ),
              icon: Icon(Icons. developer_board,color: Colors.black,),
              onPressed: () {
                Navigator.pushNamed(context, '/helpsing');
              },
            ),

          ),




        ],
      ),

//      body: Row(
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[
//          Text('Hello Word'),
//          FlatButton(
//            onPressed: () {},
//            color: Colors.amber,
//            child: Text('Click Me!')
//          ),
//          Container(
//            color: Colors.cyan,
//            padding:EdgeInsets.all(30.0),
//            child:Text('Insider')
//          ),
//
//        ],
//      ),
//      body: Padding(
//        padding:EdgeInsets.all(90.0),
//        child:Text('Hello'),
//      ),
//      body: Container(
//        padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
//        margin: EdgeInsets.all(30.0),
//        color: Colors.lightGreenAccent,
//        child: Text(' Hello '),
//      ),
//      body: Center(
////        child: IconButton(
////          onPressed: () {
////            print("YOU STILL SUCK");
////          },
////          icon: Icon(Icons.alternate_email),
////          color: Colors.amber,
////        )
////        child: RaisedButton.icon(
////          onPressed: () {},
////          icon: Icon(
////            Icons.contact_mail
////          ),
////          label: Text('mail me'),
////          color: Colors.orange,
////        ),
////        child: FlatButton(
////          onPressed: () {
////            print('You suck!');
////          },
////          child: Text('Click!'),
////          color: Colors.lightBlue,
////        ),
////        child: Icon(
////          Icons.airplanemode_active,
////          color: Colors.lightBlue,
////          size:50.0,
////
////        ),
////        child: Image(
////          image: AssetImage('assets/space1.jpg'),
////
////        )
////        child: Text(
////          ' We will win this!',
////          style: TextStyle(
////            fontSize: 20.0,
////            fontWeight: FontWeight.bold,
////            letterSpacing: 2.0,
////            color: Colors.green[700],
////            fontFamily: 'ChelseaMarkeet',
////
////
////          ),
////        ),
//      ),
//      floatingActionButton: FlatButton.icon(
//        onPressed: () {
//          Navigator.pushNamed(context, '/location');
//        },
//        icon: Icon(Icons.contact_mail),
//        label: Text('Check me out'),
//
//      ),

    );
  }
}
