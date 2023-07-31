class DriverModel {
  String id;
  String name;
  String email;
  String phone;
  String password;
  String image;

  DriverModel({
    required this.id,
    required this.name,
    required this.email,
    required this.image,
    required this.password,
    required this.phone,
  });

  Map<String, dynamic> toMap(DriverModel model) {
    return {
      "id": model.id,
      "name": model.name,
      "email": model.email,
      "image": model.image,
      "password": model.password,
      "phone": model.phone,
    };
  }

  DriverModel fromMap(Map<String, dynamic> map) {
    return DriverModel(
      id: map["id"],
      name: map["name"],
      email: map["email"],
      image: map["image"],
      password: map["password"],
      phone: map["phone"],
    );
  }
}
