import '../../data/models/airbnb_model.dart';

abstract class RealEstateRepository {
  Future<List<RealEstateProperty>> getRealEstates();

  Future<RealEstateProperty> getRealEstate(String id);

  Future<List<RealEstateProperty>> getRealEstatesByCity(String city);

  Future<List<RealEstateProperty>> getRealEstatesByCountry(String country);

  Future<List<RealEstateProperty>> getRealEstatesByPrice(double price);

  Future<List<RealEstateProperty>> getRealEstatesByRoom(int room);

  Future<List<RealEstateProperty>> getRealEstatesByBathroom(int bathroom);

  Future<List<RealEstateProperty>> getRealEstatesByGarage(int garage);

  Future<List<RealEstateProperty>> getRealEstatesByType(String type);

  Future<List<RealEstateProperty>> getRealEstatesByStatus(String status);

  Future<List<RealEstateProperty>> getRealEstatesByAgent(String agent);

  Future<List<RealEstateProperty>> getRealEstatesByFeature(String feature);
}
