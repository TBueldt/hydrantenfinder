
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:io';
import 'dart:convert';

class Algorithmen {
  Future<void> standortJetzt() async {
    Position stjetzt = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  suchfeldeinleser(){
    return;
  }
  entfernungsBerechner(){
    return;
  }
  csvParser() {
    return;
  }
  sortieren() {
    return;
  }
  mapEinleser() {
    return;
  }
}
class Wasserstelle {
  final String id;
  final String name;
  final double breitengrad;
  final double laengengrad;

  Wasserstelle({
    required this.id,
    required this.name,
    required this.breitengrad,
    required this.laengengrad,
  });
}


