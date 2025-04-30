import 'package:flutter/material.dart';
import 'package:ledezma/pagina_uno.dart';
import 'package:ledezma/pagina_dos.dart';
import 'package:ledezma/pagina_tres.dart';
import 'package:ledezma/pagina_cuatro.dart';
import 'package:ledezma/pagina_cinco.dart';
import 'package:ledezma/pagina_seis.dart';

void main() => runApp(MiRutasApp());

class MiRutasApp extends StatelessWidget {
  const MiRutasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Entre paginas routes",
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PantallaUno(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const Pantallacuatro(),
        '/pantalla5': (context) => const Pantallacinco(),
        '/pantalla6': (context) => const Pantallaseis(),
      },
    );
  }
}
