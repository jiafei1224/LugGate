import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myapp/pages/models/tasks.dart';

class DataRepository {
  final CollectionReference collection = Firestore.instance.collection('tasks');

  Stream<QuerySnapshot> getStream() {
    return collection.snapshots();
  }

  Future<DocumentReference> addTask(Task task) {
    return collection.add(task.toJson());
  }

  updateTask(Task task) async {
    await collection
        .document(task.reference.documentID)
        .updateData(task.toJson());
  }

  deleteTask(Task task) async {
    await collection
        .document(task.reference.documentID)
        .delete();
  }
}
