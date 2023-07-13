// Google Map Service
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapService {
 static BitmapDescriptor sourceIcon = BitmapDescriptor.defaultMarker;
static BitmapDescriptor destinationIcon = BitmapDescriptor.defaultMarker;
static BitmapDescriptor currentLocationIcon = BitmapDescriptor.defaultMarker;

static void setCustomMarkerIcon() {
  BitmapDescriptor.fromAssetImage(
          ImageConfiguration.empty, "assets/Pin_source.png")
      .then(
    (icon) {
      sourceIcon = icon;
    },
  );
  BitmapDescriptor.fromAssetImage(
          ImageConfiguration.empty, "assets/Pin_destination.png")
      .then(
    (icon) {
      destinationIcon = icon;
    },
  );
  BitmapDescriptor.fromAssetImage(
          ImageConfiguration.empty, "assets/Badge.png")
      .then(
    (icon) {
      currentLocationIcon = icon;
    },
  );
}
}