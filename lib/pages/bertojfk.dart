import 'package:flutter/material.dart';



class Bertojfk extends StatefulWidget {
  @override
  _BertojfkState createState() => _BertojfkState();
}

class _BertojfkState extends State<Bertojfk> {
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
        title: Text(' BER->JFK SQ312',style: TextStyle(fontSize: 30,
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

                      child: Text('ID:76543 | Time:10:40',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.card_travel,color: Colors.white,),
                    onPressed: () {
                      Navigator.pushNamed(context, '/second');

                    },

                  ),

                ),
                Container(
                  color: Colors.red[400],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('ID:41123 | Time:10:40',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.card_travel ,color: Colors.white,),

                  ),

                ),
                Container(
                  color: Colors.red[400],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('ID:44213 | Time:10:41',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.card_travel,color: Colors.white,),

                  ),

                ),
                Container(
                  color: Colors.red[400],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('ID:41645 | Time:10:42',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.card_travel,color: Colors.white,),

                  ),

                ),
                Container(
                  color: Colors.red[400],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('ID:5141 | Time:10:43',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.card_travel,color: Colors.white,),

                  ),

                ),
                Container(
                  color: Colors.red[400],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('ID:51551 | Time:10:44',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.card_travel,color: Colors.white,),

                  ),

                ),
                Container(
                  color: Colors.red[400],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('ID:24141 | Time:10:44',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.card_travel,color: Colors.white,),

                  ),

                ),
                Container(
                  color: Colors.red[400],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('ID:51417 | Time:10:50',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.card_travel,color: Colors.white,),

                  ),

                ),
                Container(
                  color: Colors.red[400],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('ID:52466 | Time:10:55',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.card_travel,color: Colors.white,),

                  ),

                ),
                Container(
                  color: Colors.red[400],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('ID:64121 | Time:11:10',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.card_travel,color: Colors.white,),

                  ),

                ),
                Container(
                  color: Colors.red[400],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('ID:65145 | Time:11:18',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.card_travel,color: Colors.white,),

                  ),

                ),


              ]
          )
      ),

    );
  }
}

