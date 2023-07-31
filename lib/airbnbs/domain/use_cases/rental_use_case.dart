import 'package:driver_prototype/airbnbs/data/models/airbnb_model.dart';
import 'package:driver_prototype/airbnbs/domain/use_cases/real_estate_use_case.dart';

import '../repositories/airbnb_domain_repository.dart';

class RentalUseCase implements RealEstateUseCase {
  late final RealEstateRepository _realEstateRepository;

  @override
  Future<List<RealEstateProperty>> getRealEstateProperties() {
    // TODO: implement getRealEstateProperties
    throw UnimplementedError();
  }

  @override
  Future<List<RealEstateProperty>> getRealEstatePropertiesByAgent(String agent) {
    // TODO: implement getRealEstatePropertiesByAgent
    throw UnimplementedError();
  }

  @override
  Future<List<RealEstateProperty>> getRealEstatePropertiesByBathroom(int bathroom) {
    // TODO: implement getRealEstatePropertiesByBathroom
    throw UnimplementedError();
  }

  @override
  Future<List<RealEstateProperty>> getRealEstatePropertiesByCity(String city) {
    // TODO: implement getRealEstatePropertiesByCity
    throw UnimplementedError();
  }

  @override
  Future<List<RealEstateProperty>> getRealEstatePropertiesByFeature(String feature) {
    // TODO: implement getRealEstatePropertiesByFeature
    throw UnimplementedError();
  }

  @override
  Future<List<RealEstateProperty>> getRealEstatePropertiesByGarage(int garage) {
    // TODO: implement getRealEstatePropertiesByGarage
    throw UnimplementedError();
  }

  @override
  Future<List<RealEstateProperty>> getRealEstatePropertiesByPrice(double price) {
    // TODO: implement getRealEstatePropertiesByPrice
    throw UnimplementedError();
  }

  @override
  Future<List<RealEstateProperty>> getRealEstatePropertiesByRoom(int room) {
    // TODO: implement getRealEstatePropertiesByRoom
    throw UnimplementedError();
  }

  @override
  Future<List<RealEstateProperty>> getRealEstatePropertiesByType(String type) {
    // TODO: implement getRealEstatePropertiesByType
    throw UnimplementedError();
  }

  @override
  Future<RealEstateProperty> getRealEstateProperty(String id) {
    // TODO: implement getRealEstateProperty
    throw UnimplementedError();
  }
}
