import 'package:flutter/material.dart';



class Before extends StatefulWidget {
  @override
  _BeforeState createState() => _BeforeState();
}

class _BeforeState extends State<Before> {
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
        title: Text(' Before & After Images',style: TextStyle(fontSize: 30,
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
                  color: Colors.blue[400],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('Before Departure State',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.image,color: Colors.white,),


                  ),

                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/after1.png')
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/after2.png')
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/after3.png')
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/after4.png')
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/after5.png')
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/after6.png')
                    ),
                  ),
                ),
                Container(
                  color: Colors.red[400],
                  padding:EdgeInsets.all(9.5),
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('Upon Arrival State',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.image,color: Colors.white,),


                  ),

                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/snapshot06.png')
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/snapshot07.png')
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/snapshot08.png')
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/snapshot09.png')
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/snapshot10.png')
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/snapshot11.png')
                    ),
                  ),
                ),

              ]
          )
      ),

    );
  }
}

