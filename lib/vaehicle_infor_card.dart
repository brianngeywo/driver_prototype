import 'package:flutter/material.dart';

class VehicleInfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0), // Adding padding
      child: Card(
        elevation: 0.0, // Adding a slight shadow for a raised effect
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0), // Rounding the edges
        ),
        color: Colors.grey[300], // AA great 200 background color
        child: Container(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Vehicle Information',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8.0),
              _buildVehicleDetailRow('Model:', 'Toyota Camry'),
              _buildVehicleDetailRow('License Plate:', 'ABC123'),
              _buildVehicleDetailRow('Car Type:', 'Sedan'),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build rows for vehicle details
  Widget _buildVehicleDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 4.0),
          Text(value),
        ],
      ),
    );
  }
}
