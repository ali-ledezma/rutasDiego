import 'package:flutter/material.dart';

class PantallaUno extends StatelessWidget {
  const PantallaUno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla UNO',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla2');
              },
              child: const Text(
                'Ver Pantalla 2',
                style: TextStyle(
                  color: Color(0xffb51212),
                  fontSize: 25,
                ),
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla3');
              },
              child: const Text(
                'Ver Pantalla 3',
                style: TextStyle(
                  color: Color(0xffb41010),
                  fontSize: 25,
                ),
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla4');
              },
              child: const Text(
                'Ver Pantalla 4',
                style: TextStyle(
                  color: Color(0xffb41010),
                  fontSize: 25,
                ),
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla5');
              },
              child: const Text(
                'Ver Pantalla 5',
                style: TextStyle(
                  color: Color(0xffb41010),
                  fontSize: 25,
                ),
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla6');
              },
              child: const Text(
                'Ver Pantalla 6',
                style: TextStyle(
                  color: Color(0xffb41010),
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
