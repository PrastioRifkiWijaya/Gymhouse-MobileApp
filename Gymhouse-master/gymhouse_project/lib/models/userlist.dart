class Users {
  final String id_users;
  final String nama;
  final String email;
  String image;
  // String? alamat;
  // String? role;

  

  Users(
      {required this.id_users,
      required this.nama,
      required this.email,
      // this.alamat,
      // this.role,
      String image =
          '/data/user/0/com.example.restaurant/cache/03778633-3b3a-4f7d-be0e-25eaf15041b0/0823f9c78cc99a57e0c9d2f09fc8d003.png'})
      : this.image = image;

  Map<String, dynamic> toJson() {
    return {
      "id_users": id_users,
      "nama": nama,
      "email": email,
      "image": image,
      // "alamat" : alamat,
      // "role" : role
    };
  }

  factory Users.FromMap(Map<String, dynamic> data) {
    return Users(
      id_users: data['id_users'] ?? '',
      nama: data['nama'] ?? '',
      email: data['email'] ?? '',
      // alamat: data['alamat'] ?? '',
      // role: data['role'] ?? '',
      image: data['image'] ?? '',
    );
  }
}