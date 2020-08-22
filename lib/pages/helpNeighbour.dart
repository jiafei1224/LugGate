import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:myapp/pages/repository/dataRepository.dart';
import 'package:myapp/pages/taskDetails.dart';
import 'package:myapp/pages/utils/pets_icons.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:myapp/pages/models/tasks.dart';

// void main() => runApp(MyApp());

class HelpNeighbour extends StatefulWidget {
  @override 
  _HelpNeighbourState createState() => _HelpNeighbourState();
}

const BoldStyle = TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);

class _HelpNeighbourState extends State<HelpNeighbour> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Reliving the Kampong Spirit',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: HomeList());
  }
}

class HomeList extends StatefulWidget {
  @override
  _HomeListState createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  final DataRepository repository = DataRepository();
  int postal_code = 109679;

  @override
  Widget build(BuildContext context) {
    _getPostalCode();
    return _buildHome(context);
  }

  Widget _buildHome(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Help me get please "),
        ),
        body: StreamBuilder<QuerySnapshot>(
            stream: repository.getStream(),
            builder: (context, snapshot) {
              // debugPrint(snapshot.data.documents.toString());
              if (!snapshot.hasData) return LinearProgressIndicator();

              Widget buildList = _buildList(context, snapshot.data.documents);

              return buildList;
            }),
        floatingActionButton:
            _BuildSpeedDial() // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  SpeedDial _BuildSpeedDial() {
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(size: 22.0),
      curve: Curves.bounceIn,
      children: [
        SpeedDialChild(
            onTap: () {
              _addTask();
            },
            label: 'Add Task',
            child: Icon(Icons.add)),
        SpeedDialChild(
            onTap: () {
              _setLocation();
            },
            label: 'Set location',
            child: Icon(Icons.pin_drop)),
      ],
    );
  }

  void _setLocation() {
    LocationDialogWidget dialogWidget = LocationDialogWidget();
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: const Text("Set your location"),
              content: dialogWidget,
              actions: <Widget>[
                FlatButton(
                  onPressed: () async {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => _buildHome(context)));
                    //Navigator.of(context).push();
                    await _setPostalCode(dialogWidget.postalCode);
                    debugPrint('set postal code complete');
                    postal_code = await _getPostalCode();
                  },
                  child: Text("Set"),
                ),
              ]);
        });
  }

  _setPostalCode(int postalCode) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setInt('postal_code', postalCode);
  }

  _getPostalCode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int postalCode = prefs.getInt('postal_code') ?? -1;
    return postalCode;
  }

  void _addTask() {
    debugPrint('add task/postal code: ' + postal_code.toString());
    AlertDialogWidget dialogWidget = AlertDialogWidget();
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: const Text("Request"),
              content: dialogWidget,
              actions: <Widget>[
                FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Cancel")),
                FlatButton(
                    onPressed: () {
                      Task newTask = Task(dialogWidget.taskName,
                          type: dialogWidget.character,
                          postalCode: postal_code,
                          notes: dialogWidget.notes,
                          contact: dialogWidget.contact,
                          date: dialogWidget.date);
                      repository.addTask(newTask);
                      Navigator.of(context).pop();
                    },
                    child: Text("Add")),
              ]);
        });
  }

  Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
    // TODO : Filter by postal code
    debugPrint('postal code ' + postal_code.toString());
    List<Widget> _children = snapshot.map((data) => _buildListItem(context, data)).toList();
    return ListView(
      padding: const EdgeInsets.only(top: 20.0),
      children: _children,
    );
  }

  Widget _buildListItem(BuildContext context, DocumentSnapshot snapshot) {
    final task = Task.fromSnapshot(snapshot);
    if (task == null || task.postalCode != postal_code) {
      return Container();
    }

    var formatter = new DateFormat('yyyy-MM-dd');

    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: InkWell(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Text(task.name == null ? "" : formatter.format(task.date) + ' ' + task.name,
                      style: BoldStyle)),
              _getTaskIcon(task.type)
            ],
          ),
          onTap: () {
            _navigate(BuildContext context) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TaskDetails(task),
                  ));
            }
            _navigate(context);
          },
          highlightColor: Colors.green,
          splashColor: Colors.blue,
        ));
  }

  Widget _getTaskIcon(String type) {
    Widget taskIcon = IconButton(
      icon: Icon(Icons.fastfood),
      onPressed: () {},
    );
    debugPrint(type.toString());
    if (type == "groceries") {
      taskIcon = IconButton(
        icon: Icon(Tasks.groceries),
        onPressed: () {},
      );
    }
    return taskIcon;
  }
}

class AlertDialogWidget extends StatefulWidget {
  String taskName;
  String character = '';
  String notes = '';
  String contact;
  DateTime date = DateTime.now();

  @override
  _AlertDialogWidgetState createState() => _AlertDialogWidgetState();
}

class LocationDialogWidget extends StatefulWidget {
  int postalCode;

  @override
  _LocationDialogWidget createState() => _LocationDialogWidget();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListBody(
        children: <Widget>[
          TextField(
            autofocus: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "Enter a Task Name"),
            onChanged: (text) => widget.taskName = text,
          ),
          TextField(
            autofocus: true,
            decoration: InputDecoration(
                hintText: "Contact information"),
            onChanged: (text) => widget.contact = text,
          ),
          DropdownButtonFormField(
            hint: Text('Request category'),
            items: [
              DropdownMenuItem(child: Text('Groceries'), value: 'groceries'),
              DropdownMenuItem(child: Text('Others'), value: 'others'),
            ],
            onChanged: (String value) {
              setState(() {
                widget.character = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Notes and instructions"
            ),
            onChanged: (text) => widget.notes = text,
          ),
          Container(
            height: 200,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              initialDateTime: DateTime.now(),
              onDateTimeChanged: (DateTime newDateTime) {
                widget.date = newDateTime;
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _LocationDialogWidget extends State<LocationDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListBody(
        children: <Widget>[
          TextField(
            autofocus: true,
            decoration: new InputDecoration(labelText: "Enter your postal code"),
            keyboardType: TextInputType.number, // Only numbers can be entered
            onChanged: (String value) {
              setState(() {
                widget.postalCode = int.parse(value);
              });
            },
          ),
        ],
      ),
    );
  }
}