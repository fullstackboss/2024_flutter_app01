import 'package:flutter/material.dart';
import 'package:pruebas_limpio/components/botones/modobrillo.dart';

void main() {
  runApp(const MyAplicacion());
}

class MyAplicacion extends StatefulWidget {
  const MyAplicacion({super.key});

  @override
  State<MyAplicacion> createState() => _MyAplicacionState();
}

class _MyAplicacionState extends State<MyAplicacion> {
  // Variable para controlar el brillo de la interfaz
  Brightness modoBrilllo = Brightness.dark;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Configuración de la aplicación
      home: Scaffold(
        // Barra de aplicación (AppBar)
        appBar: AppBar(
          title: const Text('FoxHound APP'), // Título de la barra de aplicación
          actions: [
            // Botón de cambio de modo claro/oscuro en la barra de aplicación
            MyIconButtonMode(
              modoBrilllo: modoBrilllo,
              presiona: () {
                setState(() {
                  // Cambia el brillo al presionar el botón de la barra de aplicación
                  modoBrilllo = modoBrilllo == Brightness.dark
                      ? Brightness.light
                      : Brightness.dark;
                });
              },
            ),
          ],
        ),
        // Cuerpo de la pantalla
        body: const Center(
          child: Text('body'), // Contenido del cuerpo de la pantalla
        ),
      ),
      // Configuración adicional de la aplicación
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: modoBrilllo,
          useMaterial3: true,
          colorSchemeSeed: Colors.deepPurple),
    );
  }
}
