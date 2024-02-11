import 'package:Hydrantenfinder/algorithmen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MaterialApp(home: Karte()));

class Karte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Liste()),
            );
              },
          icon: Icon(
            Icons.location_searching,
            color: Colors.red,
            size: 50.0,
          ),
        ),
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(left: 80.0, top: 45.0, right: 15.0, bottom: 0.0),
          child: SearchField(),
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
                  fixedSize: Size(160, 50), backgroundColor: Colors.blue[400],
                ),
                onPressed: () {

                },
                child: Text(
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
                child: Text(
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
                onTap: (){
                  launch('https://www.google.com/maps/search/?api=1&query=52.32,4.917');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width - 30,
                  height: 80,
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      'Hallo',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      );
  }
}
class Liste extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Liste()),
            );
          },
          icon: Icon(
            Icons.location_searching,
            color: Colors.red,
            size: 50.0,
          ),
        ),
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(left: 80.0, top: 45.0, right: 15.0, bottom: 0.0),
          child: SearchField(),
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
                  fixedSize: const Size(160, 50), backgroundColor: Colors.red,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Karte()),
                  );
                },

                child: Text(
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
                  fixedSize: const Size(160, 50), backgroundColor: Colors.blue[400],
                ),
                onPressed: () {
                  // Aktion für den Button hier
                },
                child: Text(
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
                  launch('https://www.google.com/maps/search/?api=1&query=52.32,4.917');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width - 30,
                  height: 80,
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      'Hallo',
                      style: TextStyle(
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
              top: 195.0,
              left: 15.0,
              child: GestureDetector(
                onTap: () {
                  launch('https://www.google.com/maps/search/?api=1&query=52.32,4.917');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width - 30,
                  height: 80,
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      'Hallo',
                      style: TextStyle(
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
              top: 300.0,
              left: 15.0,
              child: GestureDetector(
                onTap: () {
                  launch('https://www.google.com/maps/search/?api=1&query=52.32,4.917');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width - 30,
                  height: 80,
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      'Hallo',
                      style: TextStyle(
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
              top: 405.0,
              left: 15.0,
              child: GestureDetector(
                onTap: () {
                  launch('https://www.google.com/maps/search/?api=1&query=52.32,4.917');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width - 30,
                  height: 80,
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      'Hallo',
                      style: TextStyle(
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
              top: 510.0,
              left: 15.0,
              child: GestureDetector(
                onTap: () {
                  launch('https://www.google.com/maps/search/?api=1&query=59.325,5.917');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width - 30,
                  height: 80,
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      'Hallo',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}

class SearchField extends StatefulWidget {
  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _searchController,
      maxLines: 1,
      decoration: InputDecoration(
        hintText: 'Suche...',
        filled: true,
        fillColor: Colors.white,
        prefixIcon: GestureDetector(
          onTap: () {
            print('Suchbegriff: ${_searchController.text}');
          },
          child: Icon(Icons.search),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      onChanged: (value) {
      },
      textAlign: TextAlign.start,
    );
  }
}



