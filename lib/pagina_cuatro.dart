import 'package:flutter/material.dart';

class Pantallacuatro extends StatefulWidget {
  const Pantallacuatro({Key? key}) : super(key: key);

  @override
  State<Pantallacuatro> createState() => _PantallacuatroState();
}

class _PantallacuatroState extends State<Pantallacuatro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Added Scaffold for better structure
      appBar: AppBar(
        title: const Text('Pantalla Cuatro'), // Added AppBar for context
      ),
      body: Center(
        // Center the main content
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Center items vertically
          children: <Widget>[
            // Use Padding for consistent spacing
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Container(
                color: const Color(0xff40f9ff),
                alignment: Alignment.center,
                width: double.infinity, // Use full width
                height: 300,
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(
                    color: Colors.blueGrey,
                    child: const Center(
                        child: Text(
                            "Contenedor AspectRatio")), //Added placeholder text
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  _showAlertDialog(context); // Extract AlertDialog to a method
                },
                child: const Text('Mostrar Alerta'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar!'),
            ),
          ],
        ),
      ),
    );
  }

  // Method to show the AlertDialog
  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Close'),
          ),
        ],
        title: const Text('Flutter Mapp'),
        contentPadding: const EdgeInsets.all(20.0),
        content: const Text('This is the Alert Dialog'),
      ),
    );
  }
}
