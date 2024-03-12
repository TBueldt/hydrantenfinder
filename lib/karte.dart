import 'package:Hydrantenfinder/algorithmen.dart';
import 'package:flutter/material.dart';
import 'package:Hydrantenfinder/Suchfeld.dart';
import 'package:Hydrantenfinder/liste.dart';
import 'package:Hydrantenfinder/listenbloecke.dart';
import 'package:Hydrantenfinder/flutter_karte.dart';

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
            const Positioned(
              top: 90.0,
              left: 15.0,
              child: Listenbloecke(number: 1,)
            ),
            Positioned(
              top: 190.0,
              left: 15.0,
              right: 15.0,
              bottom: 15.0,
              child: FlutterKarte(),
            ),
          ],
        ),
      ),
    );
  }
}