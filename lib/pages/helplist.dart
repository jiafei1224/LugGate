import 'package:flutter/material.dart';



class Helplist extends StatefulWidget {
  @override
  _HelplistState createState() => _HelplistState();
}

class _HelplistState extends State<Helplist> {
  bool SympCough = false;
  bool SympBreath = false;
  bool SympFever = false;
  bool SympLots = false;
  bool SympThroat = false;
  bool SympDiarr = false;
  bool SympBody = false;
  bool SympNose = false;
  bool Chronicy = false;
  bool Chronicn = false;
  bool Two=false;
  bool Five=false;
  bool Above=false;
  bool Supy=false;
  bool Seven= false;
  bool Supn= false;

  void _onRememberMeChanged(bool newValue) => setState(() {
    SympCough = newValue;


    if (SympCough) {

      print("as");

    } else {
      // TODO: Forget the user
      print('no');
    }
  });

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Flight Plan',style: TextStyle(fontSize: 30,
            fontFamily: 'ChelseaMarkeet'
        ),),
        centerTitle: true,
        backgroundColor: Colors.blue[900]
        ,
      ),
      body: SingleChildScrollView(

          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: <Widget>[

                Container(
                  color: Colors.red[400],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('BER->JFK | 20:10 | SQ312',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.flight_land,color: Colors.white,),
                    onPressed: () {
                      Navigator.pushNamed(context, '/berjfk');

                    },

                  ),

                ),
                Container(
                  color: Colors.red[400],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('CHN->JFK | 20:15 | SQ1',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.flight_land ,color: Colors.white,),

                  ),

                ),
                Container(
                  color: Colors.red[400],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('SG->JFK | 20:20 | SQ414',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.flight_land,color: Colors.white,),

                  ),

                ),
                Container(
                  color: Colors.blue[400],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('JFK->LAX | 20:10 | SQ32',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.flight_takeoff,color: Colors.white,),

                  ),

                ),
                Container(
                  color: Colors.blue[400],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('JFK->SFO | 18:20 | SQ123',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.flight_takeoff,color: Colors.white,),

                  ),

                ),
                Container(
                  color: Colors.red[400],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('HND->JFK | 22:10 | SQ414',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.flight_land,color: Colors.white,),

                  ),

                ),
                Container(
                  color: Colors.red[400],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('IND->JFK | 21:10 | SQ231',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.flight_land,color: Colors.white,),

                  ),

                ),
                Container(
                  color: Colors.red[400],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('IST->JFK | 21:20 | SQ2',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.flight_land,color: Colors.white,),

                  ),

                ),
                Container(
                  color: Colors.red[400],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('LEI->JFK | 21:45 | SQ413',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.flight_land,color: Colors.white,),

                  ),

                ),
                Container(
                  color: Colors.blue[400],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('JFK->NCK | 19:10 | SQ272',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.flight_takeoff,color: Colors.white,),

                  ),

                ),
                Container(
                  color: Colors.blue[400],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('JFK-> PHX | 19:20 | SQ413',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.flight_takeoff,color: Colors.white,),

                  ),

                ),


              ]
          )
      ),

    );
  }
}

