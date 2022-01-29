import 'dart:io';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class PlaceLocation {
  final double latitude;
  final double longitude;
  final String address;

  const PlaceLocation(
    this.address, {
    required this.latitude,
    required this.longitude,
  });

  LatLng toLatLng() {
    return LatLng(this.latitude, this.longitude);
  }
}

class Place {
  final String id;
  final String title;
  final PlaceLocation? location;
  final File image;

  Place({
    required this.id,
    required this.image,
    required this.location,
    required this.title,
  });
}
