import 'dart:math';

import '../models/airbnb_model.dart';

final List<String> airbnbImageList = [
  "https://images.pexels.com/photos/1428348/pexels-photo-1428348"
      ".jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/3769443/pexels-photo-3769443"
      ".jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/4031013/pexels-photo-4031013"
      ".jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/584399/living-room-couch-interior-room"
      "-584399.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/7746574/pexels-photo-7746574"
      ".jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/9130978/pexels-photo-9130978"
      ".jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/11786267/pexels-photo-11786267"
      ".jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/9876067/pexels-photo-9876067"
      ".jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/7635919/pexels-photo-7635919"
      ".jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/10877461/pexels-photo-10877461"
      ".jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
];

final List<RealEstateProperty> airbnbProperties = [
  RealEstateProperty(
    title: 'Luxury Apartment',
    location: 'Eldoret',
    imageUrl: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    price: 200,
  ),
  RealEstateProperty(
    title: 'Beach House',
    location: 'Mombasa',
    imageUrl: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    price: 300,
  ),
  RealEstateProperty(
    title: 'Cozy Cabin',
    location: 'Kapsabet',
    imageUrl: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    price: 150,
  ),
  RealEstateProperty(
    title: 'Beachfront Villa',
    location: 'Mombasa',
    imageUrl: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    price: 250,
  ),
  RealEstateProperty(
    title: 'Safari Lodge',
    location: 'Maasai Mara',
    imageUrl: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    price: 300,
  ),
  RealEstateProperty(
    title: 'Mountain Cabin',
    location: 'Mount Kenya',
    imageUrl: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    price: 150,
  ),
  RealEstateProperty(
    title: 'City Apartment',
    location: 'Nairobi',
    imageUrl: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    price: 200,
  ),
  RealEstateProperty(
    title: 'Lake House',
    location: 'Lake Naivasha',
    imageUrl: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    price: 180,
  ),
  RealEstateProperty(
    title: 'Countryside Cottage',
    location: 'Nanyuki',
    imageUrl: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    price: 120,
  ),
  RealEstateProperty(
    title: 'Luxury Penthouse',
    location: 'Nairobi',
    imageUrl: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    price: 400,
  ),
  RealEstateProperty(
    title: 'Secluded Lodge',
    location: 'Tsavo National Park',
    imageUrl: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    price: 280,
  ),
  RealEstateProperty(
    title: 'Treehouse Retreat',
    location: 'Diani Beach',
    imageUrl: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    price: 220,
  ),
  RealEstateProperty(
    title: 'Rustic Farmhouse',
    location: 'Nakuru',
    imageUrl: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    price: 160,
  ),
];
