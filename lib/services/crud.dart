import 'package:cloud_firestore/cloud_firestore.dart';

class CrudMethods {
  Future<void> addData(blogData) async {
    Firestore.instance.collection("blogs").add(blogData).catchError((e) {
      print(e);
    });
  }

  Future<Stream<QuerySnapshot>> getData() async {
    return await Firestore.instance.collection("blogs").snapshots();
  }

  Stream<QuerySnapshot> getStreamData() {
    return Firestore.instance.collection("blogs").snapshots();
  }
}
