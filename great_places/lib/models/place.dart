import 'dart:io';

import 'package:flutter/foundation.dart';

class PlaceLocation {
  final double latitude;
  final double longtiude;
  final String address;

  PlaceLocation({
    this.address,
    @required this.latitude,
    @required this.longtiude,
  });
}

class Place {
  final String id;
  final String title;
  final PlaceLocation location;
  final File image;

  Place({
    @required this.id,
    @required this.location,
    @required this.image,
    @required this.title,
  });
}
