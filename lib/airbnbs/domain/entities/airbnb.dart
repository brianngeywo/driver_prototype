import '../../data/models/airbnb_model.dart';

class Airbnb implements RealEstateProperty {
  final String title;
  final String location;
  final String imageUrl;
  final int price;

  Airbnb({
    required this.title,
    required this.location,
    required this.imageUrl,
    required this.price,
  });
}
