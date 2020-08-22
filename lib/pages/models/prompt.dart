import 'package:cloud_firestore/cloud_firestore.dart';

class Prompt {
  String prompt;
  DateTime date;
  bool done;
  DocumentReference reference;

  Prompt(this.prompt, {this.date, this.done, this.reference});

  factory Prompt.fromJson(Map<dynamic, dynamic> json) => _PromptFromJson(json);

  Map<String, dynamic> toJson() => _PromptToJson(this);

  @override
  String toString() => "Prompt<$prompt>";
}

Prompt _PromptFromJson(Map<dynamic, dynamic> json) {
  return Prompt(
    json['prompt'] as String,
    date: json['date'] == null ? null : (json['date'] as Timestamp).toDate(),
    done: json['done'] as bool,
  );
}

Map<String, dynamic> _PromptToJson(Prompt instance) => <String, dynamic>{
      'prompt': instance.prompt,
      'date': instance.date,
      'done': instance.done,
    };
