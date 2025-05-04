import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // AppBar con la flecha de atrás
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // Elimina la sombra del AppBar
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios,
              color: Colors.blue), // Flecha de atrás
          onPressed: () {
            Navigator.of(context).pop(); // Regresa a la pantalla anterior
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          //Usamos un Form
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Logo de Happy Toys (Imagen)
              Container(
                width: 150,
                height: 150,
                child: Image.asset(
                  'assets/logo1.png', // Reemplaza con la ruta de tu imagen
                  fit: BoxFit.contain, // Ajusta la imagen dentro del contenedor
                ),
              ),
              const SizedBox(height: 20),
              // Título "Login"
              const Text(
                'Login',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30),
              // Campo de texto para el usuario, número de teléfono o email
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Usuario, número de teléfono o email',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, introduce tu usuario/teléfono/email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),
              // Campo de texto para la contraseña
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, introduce tu contraseña';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              // Enlace "Olvidé mi contraseña"
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {
                    // Acción para "Olvidé mi contraseña"
                    print('Olvidé mi contraseña');
                  },
                  child: const Text(
                    'Olvidé mi contraseña',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Botón "Login"
              ElevatedButton(
                onPressed: () {
                  // Acción para el botón "Login"
                  if (_formKey.currentState!.validate()) {
                    print(
                        'Login presionado con email: ${_emailController.text}, password: ${_passwordController.text}');
                    // Aquí deberías autenticar al usuario
                    Navigator.pushNamed(context, '/HomeScreen');
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  textStyle: const TextStyle(
                    fontSize: 28,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 10),
              // Texto "¿No tienes una cuenta? Sign Up"
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('¿No tienes una cuenta?'),
                  TextButton(
                    onPressed: () {
                      // Acción para "Sign Up"
                      print('Sign Up presionado');
                      Navigator.pushNamed(context, '/RegisterScreen');
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
