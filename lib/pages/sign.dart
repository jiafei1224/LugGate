import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sign extends StatefulWidget {
  @override
  _SignState createState() => _SignState();
}

class _SignState extends State<Sign> {
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

      body:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
          Container(
          width: MediaQuery.of(context).size.width,
          height: 330,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/logo.PNG')
              ),
          ),
        ),
            Container(
              padding:EdgeInsets.all(10.0),

              child: TextField(
                obscureText: false,

                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    hintText: "Username",
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(40.0))),
              ),
            ),
            Container(
              padding:EdgeInsets.all(10.0),

              child: TextField(
                obscureText: false,

                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    hintText: "Email id",
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(40.0))),
              ),
            ),

            Container(
              padding:EdgeInsets.all(10.0),
              child: TextField(
                obscureText: false,

                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    hintText: "Password",
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(40.0))),
              ),
            ),

      ],
    ),
        floatingActionButton: FlatButton.icon(
          onPressed: () {
            Navigator.pushNamed(context, '/location');

          },
          icon: Icon(Icons.playlist_add_check,color: Colors.red,size: 30,),
          color: Colors.white30,

          label: Text('Submit',style: TextStyle(fontSize: 15,letterSpacing: 0.5,color: Colors.red,)),
        )
    );

  }
}

