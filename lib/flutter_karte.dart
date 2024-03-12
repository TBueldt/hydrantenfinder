import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:Hydrantenfinder/algorithmen.dart';

class FlutterKarte extends StatefulWidget {
  @override
  _FlutterKartenStatus createState() => _FlutterKartenStatus();
}

class _FlutterKartenStatus extends State<FlutterKarte> {
  final MapController mapController = MapController();

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: mapController,
      options: MapOptions(
        initialZoom: 16.0,
        initialCenter: LatLng(Algorithmen().standortLat, Algorithmen().standortLon),
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        ),
        MarkerLayer(
          markers: [
            Marker(
              point: LatLng(Algorithmen().hydrant[1][2],
                  Algorithmen().hydrant[1][3]),
              width: 80,
              height: 80,
              child: Image.asset('assets/H1.png'),
            ),
            Marker(
              point: LatLng(Algorithmen().hydrant[2][2],
                  Algorithmen().hydrant[2][3]),
              width: 80,
              height: 80,
              child: Image.asset('assets/H2.png'),
            ),
            Marker(
              point: LatLng(Algorithmen().hydrant[3][2],
                  Algorithmen().hydrant[3][3]),
              width: 80,
              height: 80,
              child: Image.asset('assets/H3.png'),
            ),
            Marker(
              point: LatLng(Algorithmen().hydrant[4][2],
                  Algorithmen().hydrant[4][3]),
              width: 80,
              height: 80,
              child: Image.asset('assets/H4.png'),
            ),
            Marker(
              point: LatLng(Algorithmen().hydrant[5][2],
                  Algorithmen().hydrant[5][3]),
              width: 80,
              height: 80,
              child: Image.asset('assets/H5.png'),
            ),
            Marker(
              point: LatLng(Algorithmen().standortLat,
                  Algorithmen().standortLon),
              width: 80,
              height: 80,
              child: const Icon(
                  Icons.location_on, color: Colors.red, size: 60.0),
            ),
          ],
        ),
      ],
    );
  }
}