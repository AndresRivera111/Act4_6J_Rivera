import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Fondo blanco
      appBar: AppBar(
        backgroundColor: Colors.white, // AppBar blanco
        elevation: 0, // Sin sombra
        leading: IconButton(
          // Icono del menú
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {
            // Acción del menú
            print('Menú presionado');
          },
        ),
        title: const Text(
          // Título "HOME"
          'HOME',
          style: TextStyle(
            color: Colors.blue, // Color azul
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true, // Centrar el título
        actions: <Widget>[
          IconButton(
            // Icono de usuario
            icon: const Icon(Icons.person_outline, color: Colors.black),
            onPressed: () {
              // Acción del usuario
              print('Usuario presionado');
            },
          ),
          IconButton(
            // Icono del carrito
            icon: const Icon(Icons.shopping_cart_outlined, color: Colors.red),
            onPressed: () {
              // Acción del carrito
              print('Carrito presionado');
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(''), // El cuerpo principal está vacío en la imagen
      ),
    );
  }
}
