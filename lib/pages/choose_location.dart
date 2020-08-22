import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        height: 320,

        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/loog.png')
          ),
        ),
      ),
        Container(
          padding:EdgeInsets.all(5.0),
          child: TextField(
              obscureText: false,

              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  hintText: "User Email",
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(40.0))),
        ),
        ),
            Container(
              padding:EdgeInsets.all(5.0),
              child: TextField(
                obscureText: true,

                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    hintText: "Password",
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(40.0))),
              ),
            ),
            Container(
              color: Colors.white,
              padding:EdgeInsets.all(9.5),
              child: FlatButton.icon(
                label: Container(

                  child: Text('Login In',style: TextStyle(fontSize: 25,color: Colors.red),),
                ),
                icon: Icon(Icons. wifi_tethering,color: Colors.red,size: 35,),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),

            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 1),
              padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color(0xff2872ba),
                    borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(5),
                    topRight: Radius.circular(5)),
                ),
                alignment: Alignment.center,
                child: Text('Log in with SIA Account',
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400)),
                ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomCenter,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  Text(
                      '         Don\'t have an account ?',
                      style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                      width: 10,
                  ),
                  Text(
                      '',
                      style: TextStyle(
                      color: Color(0xfff79c4f),
                      fontSize: 13,
                      fontWeight: FontWeight.w600),

                )
            ],
          ),
        ),
      ],
      ),


//        floatingActionButton: FlatButton.icon(
//          onPressed: () {
//            Navigator.pushNamed(context, '/sign');
//
//          },
//          icon: Icon(Icons.person_outline,color: Colors.red,size: 25,),
//          color: Colors.white30,
//
//          label: Text('Register',style: TextStyle(fontSize: 15,letterSpacing: 0.5,color: Colors.red,)),
//        )
    );
  }
}

