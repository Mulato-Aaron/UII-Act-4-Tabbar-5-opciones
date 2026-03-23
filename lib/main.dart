import 'package:flutter/material.dart';
import 'mis_paginas_tab/productos.dart';
import 'mis_paginas_tab/tecnicos.dart';
import 'mis_paginas_tab/usuarios.dart';
import 'mis_paginas_tab/desarrolladores.dart';
// Asumiendo que crearás este archivo o ya tienes la clase lista
import 'mis_paginas_tab/editores.dart'; 

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'STEAM App',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFF171a21),
        scaffoldBackgroundColor: const Color(0xFF1b2838),
      ),
      home: const Inicio(), // Usamos home para manejar el estado del TabBar
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  int _selectedIndex = 0;

  // Lista de las páginas que se mostrarán según el índice
  final List<Widget> _paginas = [
    const Productos(),
    const Tecnicos(),
    const Usuarios(),
    const Desarrolladores(),
    const Editores(), // Nueva opción agregada
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('STEAM'),
        backgroundColor: const Color(0xFF171a21),
        centerTitle: true,
      ),
      // El cuerpo cambia dinámicamente según el índice seleccionado
      body: _paginas[_selectedIndex],
      
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Permite más de 3 items con etiquetas
        backgroundColor: const Color(0xFF171a21),
        selectedItemColor: const Color(0xFF66c0f4),
        unselectedItemColor: Colors.white70,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'Productos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build),
            label: 'Técnicos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Usuarios',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.code),
            label: 'Devs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            label: 'Editores',
          ),
        ],
      ),
    );
  }
}