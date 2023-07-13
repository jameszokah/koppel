import 'dart:async';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trashx_driver/services/services.dart';
import 'package:trashx_driver/utils/utils.dart';
import 'package:trashx_driver/widgets/widgets.dart';  
// import 'package:flutter/services.dart' show rootBundle;

class OrderTrackingScreen extends StatefulHookConsumerWidget {
  const OrderTrackingScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OrderTrackingScreenState();
}

class _OrderTrackingScreenState extends ConsumerState<OrderTrackingScreen> {
  final Completer<GoogleMapController> _controller = Completer();
  static const LatLng sourceLocation = LatLng(37.33500926, -122.03272188);
  static const LatLng destination = LatLng(37.33429383, -122.06600055);

  Position? currentLocation;

  StreamSubscription<Position>? positionStream;

  String? _mapStyle;

  List<LatLng> polylineCoordinates = [];

  /// Determine the current position of the device.
  ///
  /// When the location services are not enabled or permissions
  /// are denied the `Future` will return an error.
  static Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      Utils.googleApiKey, // Your Google Map Key
      PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
      PointLatLng(destination.latitude, destination.longitude),
    );
    if (result.points.isNotEmpty) {
      for (int i = 0; i < result.points.length; i++) {
        PointLatLng point = result.points[i];
        polylineCoordinates.add(
          LatLng(point.latitude, point.longitude),
        );
      }
      setState(() {});
    }
  }

  void getCurrentLocation() async {
    _determinePosition().then((value) {
      currentLocation = value;
      setState(() {});
    });

    const LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 100,
    );

    GoogleMapController googleMapController = await _controller.future;
    positionStream =
        Geolocator.getPositionStream(locationSettings: locationSettings)
            .listen((Position? position) {
      currentLocation = position;

      googleMapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            zoom: 13.5,
            target: LatLng(
              position!.latitude,
              position.longitude,
            ),
          ),
        ),
      );
      setState(() {});
    });
  }

  void loadMap() async {
    _mapStyle = await DefaultAssetBundle.of(context)
        .loadString('assets/map_style.json');

    //     rootBundle.loadString('assets/images/mapstyle.json').then((string) {
    //   _mapStyle = string;
    // });
  }

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      getPolyPoints();
      getCurrentLocation();
      loadMap();
      GoogleMapService.setCustomMarkerIcon();



    // Bottom sheet pop up

    showModalBottomSheet(
              enableDrag: true,
              isDismissible: true,
              showDragHandle: true,
              context: context,
              builder: (context) {
                return const SizedBox(
                  height: 800,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      BottomSheetOrderTracking(),
                    ],
                  ),
                );
              });

      return () {
        // Dispose Objects here
        positionStream!.cancel();
      };
    }, []);

    return Scaffold(
      extendBody: true,
      body: currentLocation == null
        ? const Center(child: CircularProgressIndicator.adaptive())
        : GoogleMap(
            initialCameraPosition: CameraPosition(
              target:
                  LatLng(currentLocation!.latitude, currentLocation!.longitude),
              zoom: 13.5,
            ),
            markers: {
              Marker(
                markerId: const MarkerId("currentLocation"),
                // icon: GoogleMapService.currentLocationIcon,
                position: LatLng(
                    currentLocation!.latitude, currentLocation!.longitude),
              ),
              Marker(
                markerId: const MarkerId("source"),
                // icon: GoogleMapService.sourceIcon,
                position: sourceLocation,
              ),
              Marker(
                markerId: const MarkerId("destination"),
                // icon: GoogleMapService.destinationIcon,
                position: destination,
              ),
            },
            onMapCreated: (mapController) {
              _controller.complete(mapController);
              mapController.setMapStyle(_mapStyle);
            },
            polylines: {
              Polyline(
                polylineId: const PolylineId("route"),
                points: polylineCoordinates,
                color: const Color(0xFF7B61FF),
                width: 6,
              ),
            },
          ),
    );
  }
}
