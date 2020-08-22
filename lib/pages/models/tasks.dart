import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

import 'prompt.dart';

class Task {
  String name;
  String type;
  String notes;
  DateTime date;
  bool done;
  String contact;
  int postalCode;
  List<Prompt> prompts = List<Prompt>();
  DocumentReference reference;

  Task(this.name,
      {this.notes,
      this.contact,
      this.type,
      this.prompts,
      this.date,
      this.done,
      this.postalCode,
      this.reference});

  factory Task.fromSnapshot(DocumentSnapshot snapshot) {
    Task newTask = Task.fromJson(snapshot.data);
    newTask.reference = snapshot.reference;
    return newTask;
  }

  factory Task.fromJson(Map<String, dynamic> json) => _TaskFromJson(json);

  Map<String, dynamic> toJson() => _TaskToJson(this);

  @override
  String toString() => "Task<$name>";
}

Task _TaskFromJson(Map<String, dynamic> json) {
  return Task(json['name'] as String,
      type: json['type'] as String,
      notes: json['notes'] as String,
      contact: json['contact'] as String,
      prompts: _convertPrompts(json['prompts'] as List),
      date: json['date'].toDate() ,
      done: json['done'] as bool,
      postalCode: json['postalCode'] as int);
}

List<Prompt> _convertPrompts(List promptMap) {
  if (promptMap == null) {
    return null;
  }
  List<Prompt> prompts = List<Prompt>();
  promptMap.forEach((value) {
    prompts.add(Prompt.fromJson(value));
  });
  return prompts;
}

Map<String, dynamic> _TaskToJson(Task instance) => <String, dynamic>{
      'name': instance.name,
      'notes': instance.notes,
      'type': instance.type,
      'prompts': _PromptList(instance.prompts),
      'done': instance.done,
      'date': instance.date,
      'postalCode': instance.postalCode,
      'contact': instance.contact,
    };

List<Map<String, dynamic>> _PromptList(List<Prompt> prompts) {
  if (prompts == null) {
    return null;
  }
  List<Map<String, dynamic>> promptMap = List<Map<String, dynamic>>();
  prompts.forEach((prompt) {
    promptMap.add(prompt.toJson());
  });
  return promptMap;
}
