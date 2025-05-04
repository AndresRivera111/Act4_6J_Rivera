import 'package:flutter/material.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Fondo blanco
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 150,
            ),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    'assets/logo1.png', // Reemplaza con la ruta de tu imagen
                    fit: BoxFit
                        .contain, // Ajusta la imagen dentro del contenedor
                  ),
                )
              ],
            ),
            const SizedBox(height: 150),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/LoginScreen');
                // Acción al presionar el botón "Comenzar"
                print('Botón Comenzar presionado');
                // Puedes navegar a la siguiente pantalla aquí
                // Navigator.push(context, MaterialPageRoute(builder: (context) => NextScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue, // Color del botón: celeste
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: const TextStyle(fontSize: 28),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
              child: const Text(
                'Comenzar',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
