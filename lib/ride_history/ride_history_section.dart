import 'package:flutter/material.dart';

class RideHistorySection extends StatelessWidget {
  // Sample data for completed rides (you can replace this with actual data)
  final List<Map<String, String>> completedRides = [
    {
      'date': '2023-07-20',
      'pickupLocation': '123 Main St',
      'destination': '456 Elm St',
      'fare': '\$15.00',
    },
    {
      'date': '2023-07-19',
      'pickupLocation': '789 Oak St',
      'destination': '321 Maple St',
      'fare': '\$20.50',
    },
    // Add more completed rides here...
  ];

  RideHistorySection({super.key});

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Text(
            'Ride History',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 12.0),
        ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: completedRides.length,
          itemBuilder: (context, index) {
            final ride = completedRides[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: _buildRideItem(
                date: ride['date']!,
                pickupLocation: ride['pickupLocation']!,
                destination: ride['destination']!,
                fare: ride['fare']!,
                context: context,
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildRideItem({
    required String date,
    required String pickupLocation,
    required String destination,
    required String fare,
    required BuildContext context,
  }) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              date,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 4.0),
            Text('Pickup: $pickupLocation'),
            Text('Destination: $destination'),
            Text('Fare: $fare'),
          ],
        ),
      ),
    );
  }
}
