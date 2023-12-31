import 'package:flutter/material.dart';
import 'package:driver_prototype/constants/animation_constants.dart';
import 'package:driver_prototype/settings/presentation/pages/main_settings_screen.dart';
import 'package:driver_prototype/notifications/presentation/pages/notifications_screen.dart';
import 'package:driver_prototype/payments/presentation/pages/payment_screen.dart';
import 'package:driver_prototype/general_screens/promotions.dart';
import 'package:driver_prototype/homescreen.dart';
import 'package:driver_prototype/ride_booking/presentation/pages/recent_locations.dart';
import 'package:driver_prototype/ride_history/presentation/pages/my_rides_history.dart';
import 'package:driver_prototype/user_profile/presentation/pages/main_profile_page.dart';

import 'emergency_contacts_screen.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.75,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Container(
              color: Colors.white, // Set the background color of the header to white
              child: UserAccountsDrawerHeader(
                accountName: const Text(
                  'Emmanuel Korir',
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: const Text(
                  'view profile',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://images.pexels'
                    '.com/photos/91224/pexels-photo-91224'
                    '.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  ), // Replace
                  // with your own profile image
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                arrowColor: Colors.white,
                onDetailsPressed: () {
                  // Handle edit profile button press
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(),
                    ),
                  );
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
                child: Text(
                  'Home',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PaymentScreen(),
                  ),
                );
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
                child: Text(
                  'Wallet',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MyRidesHistory(),
                  ),
                );
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
                child: Text(
                  'Your Trips History',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => RecentLocationsPage(),
                  ),
                );
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
                child: Text(
                  'Saved Locations',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => NotificationsScreen(),
                  ),
                );
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
                child: Text(
                  'Notifications',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PromotionsScreen(),
                  ),
                );
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
                child: Text(
                  'Promotions',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // GestureDetector(
            //   onTap: () {},
            //   child: const Padding(
            //     padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
            //     child: Text(
            //       'Refer and Earn',
            //       style: TextStyle(
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ),
            // ),
            // GestureDetector(
            //   onTap: () {},
            //   child: const Padding(
            //     padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
            //     child: Text(
            //       'Rewards',
            //       style: TextStyle(
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ),
            // ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(CustomTransitions()
                    .slideTransitionPageRouteBuilder(const EmergencyContactsScreen()));
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
                child: Text(
                  'Emergency Contacts',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MainSettingsScreen(),
                  ),
                );
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
                child: Text(
                  'Settings',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // const Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
            //   child: Text(
            //     'Help',
            //     style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            // const Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
            //   child: Text(
            //     'About',
            //     style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            GestureDetector(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
                child: Text(
                  'Rate Us',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            GestureDetector(
              // leading: const Icon(Icons.logout),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
                child: Text(
                  'Logout',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
              onTap: () {
                // Handle Log Out button press
              },
            ),
          ],
        ),
      ),
    );
  }
}
