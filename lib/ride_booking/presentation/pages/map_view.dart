import 'package:flutter/material.dart';
import 'package:driver_prototype/custom_drawer.dart';
import 'package:remixicon/remixicon.dart';

import '../../../user_profile/presentation/pages/main_profile_page.dart';

class MainMapViewPage extends StatelessWidget {
  const MainMapViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      body: Stack(
        children: <Widget>[
          Center(
            child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/map1.png'),
                    fit: BoxFit.cover,
                  ),
                )),
          ),
          Positioned(
            top: 50,
            right: 30,
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 23,
                child: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.black,
                  size: 32,
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 270,
            right: 30,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 23,
              child: Icon(
                Icons.gps_fixed_rounded,
                color: Colors.black,
                size: 32,
              ),
            ),
          ),
          Positioned(
            bottom: 190,
            left: 30,
            right: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Builder(builder: (context) {
                  return GestureDetector(
                    onTap: () => Scaffold.of(context).openDrawer(),
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 23,
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(
                            child: Icon(
                              Remix.menu_4_fill,
                              color: Colors.black,
                              size: 27,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
                Builder(builder: (context) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilePage(),
                        ),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                        'https://images.pexels'
                        '.com/photos/91224/pexels-photo-91224'
                        '.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      ),
                    ),
                  );
                })
              ],
            ),
          ),
          // Positioned(
          //   bottom: 10,
          //   left: 0,
          //   right: 0,
          //   // search text field
          //   child: Center(
          //     child: SizedBox(
          //       height: 180, // Set a fixed height for the container
          //       child: ListView.builder(
          //         shrinkWrap: true,
          //         scrollDirection: Axis.horizontal,
          //         itemCount: currentRideRequests.length,
          //         itemBuilder: (context, index) {
          //           currentRideRequests.sort(
          //               (first, second) => first.distance.compareTo(second.distance));
          //           var currentRide = currentRideRequests[index];
          //           var fare = currentRide.fare * 0.7;
          //           return Padding(
          //             padding: const EdgeInsets.all(8.0),
          //             child: SizedBox(
          //               width: 250,
          //               child: Padding(
          //                 padding: const EdgeInsets.all(8.0),
          //                 child: GestureDetector(
          //                   onTap: () {
          //                     showDialog(
          //                         context: context,
          //                         builder: (context) => AcceptRideDialog());
          //                   },
          //                   child: Card(
          //                     elevation: 10,
          //                     shape: RoundedRectangleBorder(
          //                       borderRadius: BorderRadius.circular(10),
          //                     ),
          //                     child: Padding(
          //                       padding: const EdgeInsets.all(12.0),
          //                       child: Column(
          //                         crossAxisAlignment: CrossAxisAlignment.start,
          //                         mainAxisAlignment: MainAxisAlignment.center,
          //                         children: [
          //                           Row(
          //                             mainAxisAlignment: MainAxisAlignment.start,
          //                             children: [
          //                               const CircleAvatar(
          //                                 radius: 13,
          //                                 backgroundImage: NetworkImage(
          //                                   'https://images.pexels'
          //                                   '.com/photos/91224/pexels-photo-91224'
          //                                   '.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          //                                 ),
          //                               ),
          //                               const SizedBox(width: 20),
          //                               Text(
          //                                 "Username $index",
          //                               ),
          //                             ],
          //                           ),
          //                           const SizedBox(height: 12.0),
          //                           Text(
          //                             "To: ${currentRide.destination}",
          //                           ),
          //                           const SizedBox(height: 12.0),
          //                           Text(
          //                             "Fare: Khs ${fare.toString()}",
          //                           ),
          //                           const SizedBox(height: 12.0),
          //                           Text(
          //                             "Distance: ${currentRide.distance} km",
          //                           ),
          //                         ],
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           );
          //         },
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

void showRiderRequestBottomSheet(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return const ListTile(
          tileColor: Colors.white,
          leading: CircleAvatar(
            radius: 22,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Remix.user_2_fill,
                size: 14,
              ),
            ),
          ),
          title: Text("Emmanuel"),
        );
      });
}
