
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:csv/csv.dart';

class Algorithmen {
  Future<void> standortJetzt() async {
    var status = await Permission.location.status;
    if (!status.isGranted) {
      await Permission.location.request();
    }

    status = await Permission.location.status;
    if (status.isGranted) {
      Position stjetzt = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
    }
  }

  Future<String> suchfeldeingabeInCords(String address) async {
    String nominatimUrl = "https://nominatim.openstreetmap.org/search?format=json&q=$address";

    var response = await http.get(Uri.parse(nominatimUrl));

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      if (jsonResponse.isNotEmpty) {
        double lat = double.parse(jsonResponse[0]['lat']);
        double lon = double.parse(jsonResponse[0]['lon']);
        print(lat);
        print(lon);
        return 'Test ($lat, $lon)';
      } else {
        throw Exception("Keine Koordinaten für die Adresse gefunden.");
      }
    } else {
      throw Exception("Fehler beim Abrufen der Daten: ${response.statusCode}");
    }
  }

}



