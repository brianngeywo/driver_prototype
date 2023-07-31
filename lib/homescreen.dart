import 'package:flutter/material.dart';
import 'package:driver_prototype/airbnbs/presentation/pages/airbnb_view_page.dart';
import 'package:driver_prototype/animation_constants.dart';
import 'package:driver_prototype/custom_drawer.dart';
import 'package:driver_prototype/driver_booking/presentation/pages/drivers_list.dart';
import 'package:driver_prototype/notifications/presentation/pages/notifications_screen.dart';
import 'package:driver_prototype/ride_booking/presentation/pages/car_selection_indicator.dart';
import 'package:driver_prototype/ride_booking/presentation/pages/recent_locations.dart';
import 'package:driver_prototype/static_data.dart';
import 'package:remixicon/remixicon.dart';

import 'airbnbs/data/data_sources/local.dart';
import 'airbnbs/presentation/pages/airbnb_list_page.dart';
import 'all_ride_requests_screen.dart';
import 'user_profile/presentation/pages/main_profile_page.dart';
import 'ride_booking/presentation/pages/map_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void navigateToAirbnbsListPage(BuildContext context) {
    Navigator.of(context).push(
      CustomTransitions().bottomToUpSlideTransitionPageRouteBuilder(
        const AirbnbPropertyListPage(),
      ),
    );
  }

  void navigateToDriversPage(BuildContext context) {
    Navigator.of(context).push(
      CustomTransitions().bottomToUpSlideTransitionPageRouteBuilder(
        NearbyDriversPage(),
      ),
    );
  }

  void navigateToSavedLocationsPage(BuildContext context) {
    Navigator.push(
      context,
      CustomTransitions().bottomToUpSlideTransitionPageRouteBuilder(
        RecentLocationsPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(
              Remix.menu_4_fill,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          );
        }),
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'EldoTaxi',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
      ),
      drawer: CustomDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Builder(builder: (context) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              CustomTransitions().slideTransitionPageRouteBuilder(
                                ProfilePage(),
                              ),
                            );
                          },
                          child: const CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                              'https://images.pexels'
                              '.com/photos/91224/pexels-photo-91224.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                            ),
                          ),
                        );
                      }),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              CustomTransitions().rightToLeftSlideTransitionPageBuilder(
                                NotificationsScreen(),
                              ),
                            );
                          },
                          child: const Icon(Icons.notifications_none_outlined, size: 30)),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
                  child: const Text(
                    'Hi, Emmanuel',
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
                  child: const Text(
                    'Where do you want to go \ntoday?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Your Location',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            CustomTransitions().rightToLeftSlideTransitionPageBuilder(
                              const MainMapViewPage(),
                            ),
                          );
                        },
                        child: const Text(
                          'View full map',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //maps curved container placeholder
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      CustomTransitions().rightToLeftSlideTransitionPageBuilder(
                        const MainMapViewPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    margin: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/maps.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 8.0, top: 4.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Colors.blue,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            CustomTransitions().rightToLeftSlideTransitionPageBuilder(
                              const MainMapViewPage(),
                            ),
                          );
                        },
                        child: const Text(
                          '123 Road, Current Location',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Container(
                //   margin: const EdgeInsets.only(left: 8.0, right: 8.0),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       const Text(
                //         'Where to?',
                //         style: TextStyle(
                //           fontSize: 16,
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),
                //       TextButton(
                //         onPressed: () {
                //           navigateToSavedLocationsPage(context);
                //         },
                //         child: const Text(
                //           'Manage',
                //           style: TextStyle(
                //             color: Colors.blue,
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // const SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.start,
                //     children: [
                //       CustomLocationCard(
                //         title: "Home",
                //         imageUrl: "assets/house.png",
                //         location: "123 Road, Town",
                //       ),
                //       CustomLocationCard(
                //         title: "Office",
                //         imageUrl: "assets/office.png",
                //         location: "123 Road, Town",
                //       ),
                //       CustomLocationCard(
                //         title: "Restaurant",
                //         imageUrl: "assets/food.png",
                //         location: "123 Road, Town",
                //       )
                //     ],
                //   ),
                // ),
                Container(
                  margin: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Quick rides',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          // color: Colors.blue,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            CustomTransitions().rightToLeftSlideTransitionPageBuilder(
                                const MainMapViewPage()),
                          );
                        },
                        child: const Text(
                          'View in map',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 90,
                  child: Center(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: currentRideRequests.length,
                      itemBuilder: (context, index) {
                        currentRideRequests.sort(
                            (first, second) => first.distance.compareTo(second.distance));
                        var currentRide = currentRideRequests[index];
                        var fare = currentRide.fare * 0.7;
                        return GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => AcceptRideDialog());
                          },
                          child: CustomLocationCard(
                            title: "Kshs ${fare.toString()}",
                            imageUrl: "",
                            location: currentRide.destination,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Popular places nearby',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          navigateToAirbnbsListPage(context);
                        },
                        child: const Text(
                          'View all',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ...airbnbProperties.take(5).map((airbnb) {
                        return PopularPlacesImageCard(
                          propertyName: airbnb.title,
                          propertyLocation: airbnb.location,
                          image: airbnb.imageUrl,
                          price: "${airbnb.price}",
                        );
                      }).toList(),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const AirbnbPropertyListPage(),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.grey.shade200,
                            radius: 30,
                            child: const Center(
                              child: Icon(
                                size: 20,
                                Icons.arrow_forward_outlined,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PopularPlacesImageCard extends StatelessWidget {
  String propertyName;
  String propertyLocation;
  String image;
  String price;

  PopularPlacesImageCard({
    required this.propertyName,
    required this.propertyLocation,
    required this.image,
    required this.price,
    Key? key,
  }) : super(key: key);

  void _navigateToAirbnbViewPage(BuildContext context) {
    Navigator.of(context).push(
      CustomTransitions().bottomToUpSlideTransitionPageRouteBuilder(
        AirbnbViewPage(
          airbnbName: propertyName,
          airbnbLocation: propertyLocation,
          airbnbImage: image,
          airbnbPrice: price,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _navigateToAirbnbViewPage(context);
      },
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ClipRRect(
          child: Container(
            width: 152,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(
                  image,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.5),
                        Colors.black.withOpacity(0.5),
                        Colors.black.withOpacity(0.5),
                        Colors.black.withOpacity(0.5),
                        Colors.black.withOpacity(0.4),
                        Colors.black.withOpacity(0.4),
                        Colors.black.withOpacity(0.4),
                        Colors.black.withOpacity(0.4),
                        Colors.black.withOpacity(0.4),
                        Colors.black.withOpacity(0.4),
                        Colors.black.withOpacity(0.2),
                        Colors.black.withOpacity(0.1),
                      ],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        propertyName, // Replace with actual place name
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.location_on, color: Colors.white, size: 16),
                          const SizedBox(width: 4),
                          Text(
                            propertyLocation.trimRight(), // Replace with actual
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomLocationCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String location;

  const CustomLocationCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      // color: Colors.grey[200],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 130,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Center(
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Image.asset(
            //       imageUrl,
            //       height: 60,
            //       width: 60,
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    location,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
