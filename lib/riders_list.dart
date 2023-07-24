import 'dart:math';

import 'package:driver_prototype/static_data.dart';
import 'package:flutter/material.dart';

import 'myapp_bar.dart';

class NearbyRidersPage extends StatefulWidget {
  @override
  State<NearbyRidersPage> createState() => _NearbyRidersPageState();
}

class _NearbyRidersPageState extends State<NearbyRidersPage> {
  ScrollController _scrollController = ScrollController();
  List<Rider> myRiders = [];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
    myRiders = riders;
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.offset >=
        _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      // Reach the bottom of the list, load more data
      setState(() {
        // Append more drivers to the existing list
        print(myRiders.length);
        riders.addAll(List<Rider>.from(myRiders));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(Colors.white, "Available Riders", context),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: riders.length,
        itemBuilder: (context, index) {
          final driver = riders[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
            elevation: 0.0,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.blue,
                            image: DecorationImage(
                              image: NetworkImage(
                                driver.avatar,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              driver.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(Icons.location_on,
                                    color: Colors.black54, size: 14),
                                Text(
                                  '${driver.distance} km away',
                                  style: const TextStyle(
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 14,
                                ),
                                SizedBox(width: 4.0),
                                Text(
                                  '4.8',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ],
                        ),
                        // card image and model and number
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //car image
                          Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  carImages[Random().nextInt(carImages.length)],
                                ),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          const Text(
                            'KDS 1234',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Divider(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Rider {
  final String name;
  final String avatar;
  final double distance;

  Rider({required this.name, required this.avatar, required this.distance});
}