import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Helpsg extends StatefulWidget {
  @override
  _HelpsgState createState() => _HelpsgState();
}

class _HelpsgState extends State<Helpsg> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: DemoPage(),
    );
  }
}

class DemoPage extends StatelessWidget {
  launchURL1() {
    launch('https://play.google.com/store/apps/details?id=sg.gov.tech.bluetrace&hl=en_SG');
  }
  launchURL2() {
    launch('https://covidsitrep.moh.gov.sg/');
  }

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
        body: SingleChildScrollView(

        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 550,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/page1.PNG')
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 550,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/page2.PNG')
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 550,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/page3.JPG')
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 550,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/page4.JPG')
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 550,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/page5.JPG')
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 550,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/page6.JPG')
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 550,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/page7.JPG')
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 550,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/page8.JPG')
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 550,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/page9.JPG')
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 550,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/page10.JPG')
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 550,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/page11.JPG')
                  ),
                ),
              ),


            ]
        )
    ),

    );
  }
}


