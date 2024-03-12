import 'package:Hydrantenfinder/algorithmen.dart';
import 'package:flutter/material.dart';
import 'package:Hydrantenfinder/karte.dart';

class Suchfeld extends StatefulWidget {
  @override
  Suchfeldstatus createState() => Suchfeldstatus();
}

class Suchfeldstatus extends State<Suchfeld> {
  final TextEditingController _suchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _suchController,
      maxLines: 1,
      decoration: InputDecoration(
        hintText: 'Suche...',
        filled: true,
        fillColor: Colors.white,
        prefixIcon: GestureDetector(
          onTap: ()
          async {
            await Algorithmen().suchfeldEingabeInKoordinaten(_suchController.text);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (BuildContext context) => Karte()),
            );
            _suchController.clear();
          },
          child: const Icon(Icons.search),
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