import 'package:geolocator/geolocator.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' show rootBundle;
import 'package:csv/csv.dart';

class Algorithmen {
  static final Algorithmen _singleton = Algorithmen._internal();
  List<List<dynamic>> hydrant = [];

  factory Algorithmen() {
    return _singleton;
  }
  Algorithmen._internal();

 Future<void> standortJetzt() async {
      Position stjetzt = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      print(stjetzt);
      parseCsvAndCalculateDistance(stjetzt.latitude, stjetzt.longitude);
    }

  Future <void> suchfeldeingabeInCords(String address) async {
    String nominatimUrl = "https://nominatim.openstreetmap.org/search?format=json&q=$address";

    var response = await http.get(Uri.parse(nominatimUrl));

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      if (jsonResponse.isNotEmpty) {
        double lat = double.parse(jsonResponse[0]['lat']);
        double lon = double.parse(jsonResponse[0]['lon']);
        print(lat);
        print(lon);
        parseCsvAndCalculateDistance(lat, lon);
        return;
      } else {
        throw Exception("Keine Koordinaten für die Adresse gefunden.");
      }
    } else {
      throw Exception("Fehler beim Abrufen der Daten: ${response.statusCode}");
    }
  }

  Future<void> parseCsvAndCalculateDistance(double lat, double lon) async {
    List<List<dynamic>> csvData = await loadAndParseCsv();
    await addDistancesToCsvData(csvData, lat, lon);
    sortCsvDataByDistance(csvData);
    hydrant = csvData;
  }

  Future<List<List<dynamic>>> loadAndParseCsv() async {
    String csvString = await rootBundle.loadString('Hydrantendaten.CSV');
    return const CsvToListConverter(fieldDelimiter: ';').convert(csvString);
  }

  Future<void> addDistancesToCsvData(List<List<dynamic>> csvData, double lat, double lon) async {
    for (int i = 1; i < csvData.length; i++) {
      if (csvData[i].length >= 4) {
        double hydrantLat = double.tryParse(csvData[i][2].toString()) ?? 0.0;
        double hydrantLon = double.tryParse(csvData[i][3].toString()) ?? 0.0;
        double distance = await calculateDistance(lat, lon, hydrantLat, hydrantLon);
        csvData[i].add(distance);
      } else {
        throw Exception('Die CSV-Daten haben nicht die erwartete Anzahl von Spalten.');
      }
    }
  }

  void sortCsvDataByDistance(List<List<dynamic>> csvData) {
    csvData.sort((a, b) {
      if (a.length > 4 && b.length > 4) {
        return a[4].compareTo(b[4]);
      }
      return 0;
    });
  }

  Future<double> calculateDistance(double lat1, double lon1, double lat2, double lon2) async {
    return Geolocator.distanceBetween(lat1, lon1, lat2, lon2);
  }
}



