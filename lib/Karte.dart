import 'package:Hydrantenfinder/algorithmen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:Hydrantenfinder/Suchfeld.dart';
import 'package:Hydrantenfinder/Liste.dart';

class Karte extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        leading: IconButton(
          onPressed: () async {
            await Algorithmen().standortJetzt();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Karte()),
            );
          },
          icon: const Icon(
            Icons.location_searching,
            color: Colors.red,
            size: 50.0,
          ),
        ),
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(
              left: 80.0, top: 45.0, right: 15.0, bottom: 0.0),
          child: Suchfeld(),
        ),
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              left: 15.0, // X-Position in Pixel
              top: 20.0, // Y-Position in Pixel
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(160, 50),
                  backgroundColor: Colors.blue[400],
                ),
                onPressed: () {},
                child: const Text(
                  'Karte',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              right: 15.0,
              top: 20.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(160, 50), backgroundColor: Colors.red,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Liste()),
                  );
                },
                child: const Text(
                  'Liste',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 90.0,
              left: 15.0,
              child: GestureDetector(
                onTap: () {
                  launch(
                      'https://www.google.com/maps/search/?api=1&query=${Algorithmen()
                          .hydrant[1][2]},${Algorithmen().hydrant[1][3]}');
                },
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width - 30,
                  height: 80,
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      'Wasserstelle:${Algorithmen()
                          .hydrant[1][1]} \n Entfernung: ${Algorithmen()
                          .hydrant[1][4]} Meter',
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 190.0,
              left: 15.0,
              right: 15.0,
              bottom: 15.0,
              child: FlutterMap(
                mapController: MapController(
                ),
                options: MapOptions(
                  initialZoom: 16.0,
                  initialCenter: LatLng(
                      Algorithmen().standortLat, Algorithmen().standortLon),
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
                        child: Icon(
                            Icons.location_on, color: Colors.red, size: 60.0),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}