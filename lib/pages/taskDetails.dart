import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

import 'package:flutter/cupertino.dart';
import 'package:myapp/pages/repository/DataRepository.dart';
import 'package:myapp/pages/utils/constants.dart';

import 'models/prompt.dart';
import 'models/tasks.dart';

typedef DialogCallback = void Function();

class TaskDetails extends StatelessWidget {
  final Task task;

  const TaskDetails(this.task);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(task.name == null ? "" : task.name),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: TaskDetailForm(task),
      ),
    );
  }
}

class TaskDetailForm extends StatefulWidget {
  final Task task;

  const TaskDetailForm(this.task);

  @override
  _TaskDetailFormState createState() => _TaskDetailFormState();
}

class _TaskDetailFormState extends State<TaskDetailForm> {
  final DataRepository repository = DataRepository();
  final _formKey = GlobalKey<FormBuilderState>();
  final dateFormat = DateFormat('yyyy-MM-dd');
  String name;
  String type;
  String notes;
  String contact;
  DateTime date;
  int postalCode;

  @override
  void initState() {
    type = widget.task.type;
    name = widget.task.name;
    notes = widget.task.notes;
    postalCode = widget.task.postalCode;
    contact = widget.task.contact;
    date = widget.task.date;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: FormBuilder(
        key: _formKey,
        autovalidate: true,
        child: ListView(
          children: <Widget>[
            SizedBox(height: 20.0),
            FormBuilderTextField(
              attribute: "name",
              initialValue: name,
              decoration: textInputDecoration.copyWith(
                  hintText: 'Name', labelText: "Task Name"),
              validators: [
                FormBuilderValidators.minLength(1),
                FormBuilderValidators.required()
              ],
              onChanged: (val) {
                setState(() => name = val);
              },
            ),
            FormBuilderDropdown(
              decoration: InputDecoration(labelText: 'Request'),
              attribute: "Request type",
              initialValue: type,
              items: [
                DropdownMenuItem(
                    value: "groceries",
                    child: Text(
                      "Groceries",
                      style: TextStyle(fontSize: 16.0),
                    )),
                DropdownMenuItem(
                    value: "others",
                    child: Text(
                      "Others",
                      style: TextStyle(fontSize: 16.0),
                    )),
              ],
              onChanged: (value) {
                setState(() {
                  type = value;
                });
              },
            ),
            SizedBox(height: 20.0),
            FormBuilderTextField(
              attribute: "Address",
              initialValue: widget.task.postalCode.toString(),
              decoration: textInputDecoration.copyWith(
                  hintText: 'Postal code', labelText: "Postal code"),
              keyboardType: TextInputType.number,
              validators: [
                FormBuilderValidators.required(),
                FormBuilderValidators.numeric(),
              ],
              onChanged: (val) {
                setState(() {
                  postalCode = int.parse(val);
                });
              },
            ),
            SizedBox(height: 20.0),
            FormBuilderTextField(
              attribute: "Contact",
              initialValue: widget.task.contact,
              decoration: textInputDecoration.copyWith(
                  hintText: 'Contact information', labelText: "Contact"),
              validators: [
                FormBuilderValidators.required(),
              ],
              onChanged: (val) {
                setState(() {
                  contact = val;
                });
              },
            ),
            SizedBox(height: 20.0,),
            FormBuilderTextField(
              attribute: "Notes",
              initialValue: widget.task.notes,
              decoration: textInputDecoration.copyWith(
                  hintText: 'Notes', labelText: "Notes"),
              validators: [
                FormBuilderValidators.required(),
              ],
              onChanged: (val) {
                setState(() {
                  notes = val;
                });
              },
            ),
            SizedBox(height: 20.0),
            Container(
              height: 200,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                initialDateTime: date,
                onDateTimeChanged: (DateTime newDateTime) {
                  date = newDateTime;
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                    color: Colors.blue.shade600,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Cancel",
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    )),
                MaterialButton(
                    color: Colors.blue.shade600,
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        if (_formKey.currentState.validate()) {
                          Navigator.of(context).pop();
                          widget.task.name = name;
                          widget.task.type = type;
                          widget.task.notes = notes;
                          widget.task.postalCode = postalCode;
                          widget.task.contact = contact;
                          widget.task.date = date;

                          repository.updateTask(widget.task);
                        }
                      }
                    },
                    child: Text(
                      "Update",
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    )),
                MaterialButton(
                    color: Colors.red,
                    onPressed: () async {
                      Navigator.of(context).pop(context);
                      repository.deleteTask(widget.task);
                    },
                    child: Text(
                      "Delete",
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                    color: Colors.lightGreen,
                    onPressed: () async {
                      Navigator.of(context).pop(context);
                      repository.deleteTask(widget.task);
                    },
                    child: Text(
                      "Complete",
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRow(Prompt prompt) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Text(prompt.prompt),
        ),
        Text(prompt.date == null ? "" : dateFormat.format(prompt.date)),
        Checkbox(
          value: prompt.done == null ? false : prompt.done,
          onChanged: (newValue) {
            prompt.done = newValue;
          },
        )
      ],
    );
  }

  void _addPrompt(Task task, DialogCallback callback) {
    String prompt;
    DateTime promptDate;
    bool done = false;
    final _formKey = GlobalKey<FormBuilderState>();
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: const Text("Prompt"),
              content: SingleChildScrollView(
                child: FormBuilder(
                  key: _formKey,
                  autovalidate: true,
                  child: Column(
                    children: <Widget>[
                      FormBuilderTextField(
                        attribute: "prompt",
                        validators: [
                          FormBuilderValidators.minLength(1),
                          FormBuilderValidators.required()
                        ],
                        decoration: textInputDecoration.copyWith(
                            hintText: 'Give this repeated task a nickname?',
                            labelText: "Prompt"),
                        onChanged: (text) {
                          setState(() {
                            prompt = text;
                          });
                        },
                      ),
                      FormBuilderDateTimePicker(
                        attribute: "date",
                        inputType: InputType.date,
                        decoration: textInputDecoration.copyWith(
                            hintText: 'Schedule the task!', labelText: "Date"),
                        onChanged: (text) {
                          setState(() {
                            promptDate = text;
                          });
                        },
                      ),
                      FormBuilderCheckbox(
                        attribute: "given",
                        label: Text("Given"),
                        onChanged: (text) {
                          setState(() {
                            done = text;
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
              actions: <Widget>[
                FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Cancel")),
                FlatButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        Navigator.of(context).pop();
                        Prompt newPrompt =
                            Prompt(prompt, date: promptDate, done: done);
                        if (task.prompts == null) {
                          task.prompts = List<Prompt>();
                        }
                        task.prompts.add(newPrompt);
                      }
                      callback();
                    },
                    child: Text("Add")),
              ]);
        });
  }
}
