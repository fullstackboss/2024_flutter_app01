import 'package:flutter/material.dart';
import 'package:pruebas_limpio/components/interfaces/appbar.dart';

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
        appBar: MyAppBar(
          titulo: 'FoxHound APP',
          modoBrillo: modoBrilllo,
          onPresiona: () {
            setState(() {
              modoBrilllo = modoBrilllo == Brightness.dark
                  ? Brightness.light
                  : Brightness.dark;
            });
          },
        ),
        // Cuerpo de la pantalla
        body: Center(
          child: FilledButton(
              onPressed: () {},
              child: const Text(
                  'Presioname')), // Contenido del cuerpo de la pantalla
        ),
      ),
      // Configuración adicional de la aplicación
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: modoBrilllo,
        useMaterial3: true,
        colorSchemeSeed: Colors.red,
        primaryColorLight: Colors.red.shade50,
        primaryColorDark: Colors.red.shade900,
      ),
    );
  }
}
