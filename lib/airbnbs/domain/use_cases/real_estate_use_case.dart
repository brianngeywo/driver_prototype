abstract class RealEstateUseCase {
  Future<List<Object>> getRealEstateProperties();

  Future<Object> getRealEstateProperty(String id);

  Future<List<Object>> getRealEstatePropertiesByCity(String city);

  Future<List<Object>> getRealEstatePropertiesByPrice(double price);

  Future<List<Object>> getRealEstatePropertiesByRoom(int room);

  Future<List<Object>> getRealEstatePropertiesByBathroom(int bathroom);

  Future<List<Object>> getRealEstatePropertiesByGarage(int garage);

  Future<List<Object>> getRealEstatePropertiesByType(String type);

  Future<List<Object>> getRealEstatePropertiesByAgent(String agent);

  Future<List<Object>> getRealEstatePropertiesByFeature(String feature);
}
