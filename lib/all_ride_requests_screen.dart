import 'dart:math';

import 'package:driver_prototype/ride_request_model.dart';
import 'package:flutter/material.dart';
import 'package:driver_prototype/my_app_bar.dart';
import 'package:driver_prototype/static_data.dart';

class NearbyRideRequestsPage extends StatefulWidget {
  const NearbyRideRequestsPage({super.key});

  @override
  State<NearbyRideRequestsPage> createState() => _NearbyRideRequestsPageState();
}

class _NearbyRideRequestsPageState extends State<NearbyRideRequestsPage> {
  ScrollController _scrollController = ScrollController();
  List<RideRequest> myRideRequests = [];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
    myRideRequests = currentRideRequests;
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.offset >= _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      // Reach the bottom of the list, load more data
      setState(() {
        // Append more drivers to the existing list
        print(myRideRequests.length);
        currentRideRequests.addAll(List<RideRequest>.from(currentRideRequests));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(Colors.white, "Nearby Ride Requests", context),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: currentRideRequests.length,
        itemBuilder: (context, index) {
          // Sort the list based on distance before displaying
          currentRideRequests.sort((a, b) => a.distance.compareTo(b.distance));

          final ride = currentRideRequests[index];
          return RideRequestCard(rideRequest: ride);
        },
      ),
    );
  }
}

class RideRequestCard extends StatelessWidget {
  final RideRequest rideRequest;

  const RideRequestCard({super.key, required this.rideRequest});

  @override
  Widget build(BuildContext context) {
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
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.blue,
                      image: DecorationImage(
                        image: NetworkImage(driverProfilePictures[
                            Random().nextInt(driverProfilePictures.length)]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "username here",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(Icons.location_on, color: Colors.black54, size: 14),
                          Text(
                            '${rideRequest.distance} km away',
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
                child: TextButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   CustomTransitions().rightToLeftSlideTransitionPageBuilder(
                    //     const DriverBookingPage(),
                    //   ),
                    // );
                    showDialog(
                        context: context, builder: (context) => AcceptRideDialog());
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    "Accept",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
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
  }
}

class AcceptRideDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: const Text("Are you sure you want to accept this ride request?"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("No"),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Yes"),
        ),
      ],
    );
  }
}
