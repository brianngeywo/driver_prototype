class CarModel {
  String id;
  String carCompany;
  String carModel;
  String carPlateNumber;

  CarModel({
    required this.id,
    required this.carPlateNumber,
    required this.carModel,
    required this.carCompany,
  });

  Map<String, dynamic> toMap(CarModel model) {
    return {
      "id": model.id,
      "carPlateNumber": model.carPlateNumber,
      "carModel": model.carModel,
      "carCompany": model.carCompany,
    };
  }

  CarModel fromMap(Map<String, dynamic> map) {
    return CarModel(
      id: map["id"],
      carPlateNumber: map["carPlateNumber"],
      carModel: map["carModel"],
      carCompany: map["carCompany"],
    );
  }
}
