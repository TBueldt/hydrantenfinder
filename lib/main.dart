import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Karte()));

class Karte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        leading: IconButton(
          padding: const EdgeInsets.only(left: 320.0,top: 0.0, right: 15.0),
            onPressed: () {},
          icon: Icon(
                Icons.location_searching,
                color: Colors.black,
                size: 55.0,
            )
        ),
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 45.0, right: 110.0, bottom: 1.0),
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
                  // Aktion für den Button hier
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
                onTap: () {
                  // Aktion für den roten Block hier
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
            padding: const EdgeInsets.only(left: 320.0,top: 0.0, right: 15.0),
            onPressed: () {},
            icon: Icon(
              Icons.location_searching,
              color: Colors.black,
              size: 55.0,
            )
        ),
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 45.0, right: 110.0, bottom: 1.0),
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
                  // Aktion für den roten Block hier
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
                  // Aktion für den roten Block hier
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
                  // Aktion für den roten Block hier
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
                  // Aktion für den roten Block hier
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
                  // Aktion für den roten Block hier
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
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      onChanged: (value) {
        // Hier kannst du bei Bedarf auf Änderungen im Suchfeld reagieren
        print('Suchbegriff: $value');
      },
      textAlign: TextAlign.start,
    );
  }
}



