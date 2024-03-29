import 'package:geolocator/geolocator.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' show rootBundle;
import 'package:csv/csv.dart';

class Algorithmen {
  static final Algorithmen singleton = Algorithmen._internal();
  List<List<dynamic>> hydrant = [];

  factory Algorithmen() {
    return singleton;
  }

  Algorithmen._internal() {

    for (int i = 0; i < 6; i++) {
      List<dynamic> innerList = [];
      for (int j = 0; j < 5; j++) {
        innerList.add(0.0);
      }
      hydrant.add(innerList);
    }
  }

  double standortLat = 0.0;
  double standortLon = 0.0;

 Future<void> standortJetzt() async {
      Position standortJetzt = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      standortLat = standortJetzt.latitude;
      standortLon = standortJetzt.longitude;
      _csvZuListeUmwandelnUndWeiterverarbeiten(standortJetzt.latitude, standortJetzt.longitude);
    }

  Future <void> suchfeldEingabeInKoordinaten(String adresse) async {
    String nominatimUrl = "https://nominatim.openstreetmap.org/search?format=json&q=$adresse";

    var response = await http.get(Uri.parse(nominatimUrl));

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      if (jsonResponse.isNotEmpty) {
        double lat = double.parse(jsonResponse[0]['lat']);
        double lon = double.parse(jsonResponse[0]['lon']);
        standortLat = lat;
        standortLon = lon;
        _csvZuListeUmwandelnUndWeiterverarbeiten(lat, lon);
        return;
      } else {
        throw Exception("Keine Koordinaten für die Adresse gefunden.");
      }
    } else {
      throw Exception("Fehler beim Abrufen der Daten: ${response.statusCode}");
    }
  }

  Future<void> _csvZuListeUmwandelnUndWeiterverarbeiten(double lat, double lon) async {
    List<List<dynamic>> csvData = await _csvLadenUndParsen();
    await _distanzenZurListeHinzufuegen(csvData, lat, lon);
    _datenNachDistanzSortieren(csvData);


    hydrant = csvData.map((list) => list.map((item) {
      try {
        return double.parse(item.toString());
      } catch (e) {
        return item;
      }
    }).toList()).toList();
  }


  Future<List<List<dynamic>>> _csvLadenUndParsen() async {
    String csvString = await rootBundle.loadString('Hydrantendaten.CSV');
    return const CsvToListConverter(fieldDelimiter: ';').convert(csvString);
  }

  Future<void> _distanzenZurListeHinzufuegen(List<List<dynamic>> csvData, double lat, double lon) async {
    for (int i = 1; i < csvData.length; i++) {
      if (csvData[i].length >= 4) {
        double hydrantLat = double.tryParse(csvData[i][2].toString()) ?? 0.0;
        double hydrantLon = double.tryParse(csvData[i][3].toString()) ?? 0.0;
        double distance = await _distanzBerechnen(lat, lon, hydrantLat, hydrantLon);
        csvData[i].add(distance);
      } else {
        throw Exception('Die CSV-Daten haben nicht die erwartete Anzahl von Spalten.');
      }
    }
  }

  void _datenNachDistanzSortieren(List<List<dynamic>> csvData) {
    csvData.sort((a, b) {
      if (a.length > 4 && b.length > 4) {
        return a[4].compareTo(b[4]);
      }
      return 0;
    });
  }

  Future<double> _distanzBerechnen(double lat1, double lon1, double lat2, double lon2) async {
    double distance = await Geolocator.distanceBetween(lat1, lon1, lat2, lon2);
    return double.parse((distance).toStringAsFixed(1));
  }

}



