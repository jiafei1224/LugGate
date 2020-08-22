import 'package:flutter/material.dart';

class Damage extends StatefulWidget {
  @override
  _DamageState createState() => _DamageState();
}

class _DamageState extends State<Damage> {
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
        title: Text('ID:41314 Report',style: TextStyle(fontSize: 30,
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
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/detection.jpg')
                    ),
                  ),
                ),

                Container(
                  color: Colors.red,
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('Damping detected on the corner of the luggage.',style: TextStyle(fontSize: 15,color: Colors.white),),
                    ),
                    icon: Icon(Icons.report,color: Colors.yellow,),


                  ),

                ),
                Container(
                  color: Colors.blue[900],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('Outcome:Luggage was damaged during travelling',style: TextStyle(fontSize: 13,color: Colors.white),),
                    ),
                    icon: Icon(Icons.flight,color: Colors.red,),


                  ),

                ),
                Container(
                  color: Colors.green,
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('View Before & After',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.picture_in_picture,color: Colors.blue[900],),
                    onPressed: () {
                      Navigator.pushNamed(context, '/bef');

                    },


                  ),

                ),

//                Luggage was damaged during travelling





              ]
          )
      ),

    );
  }
}

