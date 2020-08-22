import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
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
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/lady.gif')
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.white,
              child: Text('A great way to fly.',textAlign: TextAlign.center,style:
              TextStyle(fontSize: 25.0,
                  letterSpacing: 1.0,
                  color: Colors.red,
                  fontFamily: 'ChelseaMarkeet'
              ),),),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 90,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/title.png')
                ),
              ),
            ),
//             AssetImage('assets/plane.gif')
//                ),Container(
////              width: MediaQuery.of(context).size.width,
////              height: 100,
////              decoration: BoxDecoration(
////                image: DecorationImage(
////
////                    image:
//              ),
//            ),
          ],
        ),




      floatingActionButton: FlatButton.icon(
        onPressed: () {
          Navigator.pushNamed(context, '/location');
        },
        icon: Icon(Icons.play_arrow,color: Colors.red,size: 30,),
        color: Colors.white30,

        label: Text('Start',style: TextStyle(fontSize: 19,letterSpacing: 2.0,color: Colors.red,fontFamily: 'ChelseaMarkeet',)),
      )


    );
  }
}
