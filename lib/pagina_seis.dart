import 'package:flutter/material.dart';

class Pantallaseis extends StatefulWidget {
  const Pantallaseis({Key? key}) : super(key: key);

  @override
  State<Pantallaseis> createState() => PantallaseisState();
}

class PantallaseisState extends State<Pantallaseis>
    with TickerProviderStateMixin {
  bool _isPlay = false;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Added a Scaffold
      appBar: AppBar(
        title: const Text('Pantalla Seis'), // Added an AppBar
      ),
      body: Center(
        // Centered the content
        child: GestureDetector(
          onTap: () {
            if (_isPlay == false) {
              _controller.forward();
              _isPlay = true;
            } else {
              _controller.reverse();
              _isPlay = false;
            }
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: _controller,
            size: 100,
          ),
        ),
      ),
    );
  }
}
