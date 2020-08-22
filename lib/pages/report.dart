import 'package:flutter/material.dart';



class Report extends StatefulWidget {
  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
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
        title: Text(' Incident Report',style: TextStyle(fontSize: 30,
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
                  color: Colors.red[200],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('SQ412 | ID:41314',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.report_problem,color: Colors.yellow,),
                    onPressed: () {
                      Navigator.pushNamed(context, '/dam');

                    },

                  ),

                ),
                Container(
                  color: Colors.red[400],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('SQ4 | ID:32314',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.report_problem,color: Colors.yellow,),

                  ),

                ),
                Container(
                  color: Colors.red[800],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('SQ41 | ID:13314',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.report_problem,color: Colors.yellow,),

                  ),

                ),
                Container(
                  color: Colors.red[100],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('SQ51 | ID:41334',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.report_problem,color: Colors.yellow,),

                  ),

                ),
                Container(
                  color: Colors.red[400],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('SQ6 | ID:41664',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.report_problem,color: Colors.yellow,),

                  ),

                ),
                Container(
                  color: Colors.red[900],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('SQ65 | ID:41314',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.report_problem,color: Colors.yellow,),

                  ),

                ),
                Container(
                  color: Colors.red[200],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('SQ2 | ID:41434',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.report_problem,color: Colors.yellow,),

                  ),

                ),
                Container(
                  color: Colors.blue[900],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('Color intensity representing the level of damage detected',style: TextStyle(fontSize: 10,color: Colors.white),),
                    ),
                    icon: Icon(Icons.list,color: Colors.yellow,),

                  ),

                ),



              ]
          )
      ),

    );
  }
}

