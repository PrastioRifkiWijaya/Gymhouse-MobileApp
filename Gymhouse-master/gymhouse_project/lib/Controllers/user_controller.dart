import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gymhouse_project/models/userlist.dart';

class userController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');

  Stream<List<DocumentSnapshot>> getAdminList() {
    return userCollection.snapshots().map((snapshot) => snapshot.docs);
  }

  Future<List<Users>> getAdmin() async {
    List<Users> adminList = [];

    QuerySnapshot snapshot = await userCollection.get();

    snapshot.docs.forEach((element) {
      Map<String, dynamic> data = element.data() as Map<String, dynamic>;
      adminList.add(Users.FromMap(data));
    });

    return adminList.toList();
  }

  Future<List<String>> getAdmnIds() async {
    final querySnapshot = await userCollection.get();
    final documentIds = querySnapshot.docs.map((doc) => doc.id).toList();
    return documentIds;
  }

  Future<void> addData( String userId, String id, String nama, String email) async {
    try {
      await userCollection.doc(userId).set({
        'id_users': id,
        'nama': nama,
        'email': email,
      });
      print('Data berhasil ditambahkan');
    } catch (e) {
      print('Terjadi kesalahan: $e');
    }
  }

  Future<void> editData(String userId, String id, String nama, String email,
     String image) async {
    try {
      await userCollection.doc(userId).update({
        'id_users': id,
        'nama': nama,
        'email': email,
        'image': image
      });
      print('Data berhasil diperbarui');
    } catch (e) {
      print('Terjadi kesalahan saat memperbarui data: $e');
    }
  }

  Future<void> deleteItem(String id) {
    return userCollection.doc(id).delete();
  }
}