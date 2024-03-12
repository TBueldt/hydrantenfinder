import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:Hydrantenfinder/algorithmen.dart';

class Listenbloecke extends StatefulWidget {
  final int number;

  const Listenbloecke({Key? key, required this.number}) : super(key: key);

  @override
  _ListenbloeckeState createState() => _ListenbloeckeState();
}

class _ListenbloeckeState extends State<Listenbloecke> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launch('https://www.google.com/maps/search/?api=1&query=${Algorithmen().hydrant[widget.number][2]},${Algorithmen().hydrant[widget.number][3]}');
      },
      child: Container(
        width: MediaQuery.of(context).size.width - 30,
        height: 80,
        color: Colors.red,
        child: Center(
          child: Text(
            'Wasserstelle:${Algorithmen().hydrant[widget.number][1]} \n Entfernung: ${Algorithmen().hydrant[widget.number][4]} Meter',
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
