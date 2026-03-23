import 'package:flutter/material.dart';

class Editores extends StatelessWidget {
  const Editores({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Editores")),
      body: Center(
        child: Image.network(
          'https://raw.githubusercontent.com/Mulato-Aaron/imagenes1/refs/heads/main/pslogo.png', 
          width: 200, 
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}