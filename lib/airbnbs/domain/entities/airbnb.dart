import '../../data/models/airbnb_model.dart';

class Airbnb implements RealEstateProperty {
  @override
  final String title;
  @override
  final String location;
  @override
  final String imageUrl;
  @override
  final int price;

  Airbnb({
    required this.title,
    required this.location,
    required this.imageUrl,
    required this.price,
  });
}
