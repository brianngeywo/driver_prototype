class RideRequest {
  String id;
  String pickupLocation;
  String destination;
  double fare;
  String date;
  String time;
  String status;
  double distance;

  RideRequest({
    required this.id,
    required this.pickupLocation,
    required this.destination,
    required this.fare,
    required this.date,
    required this.time,
    required this.status,
    required this.distance,
  });

  //to map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'pickupLocation': pickupLocation,
      'destination': destination,
      'fare': fare,
      'date': date,
      'time': time,
      'status': status,
      'distance': distance,
    };
  }

  //from map
  factory RideRequest.fromMap(Map<String, dynamic> map) {
    return RideRequest(
      id: map['id'],
      pickupLocation: map['pickupLocation'],
      destination: map['destination'],
      fare: map['fare'],
      date: map['date'],
      time: map['time'],
      status: map['status'],
      distance: map['distance'],
    );
  }
}
