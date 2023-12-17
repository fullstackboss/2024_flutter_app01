import 'package:flutter/material.dart';
import 'package:pruebas_limpio/components/botones/modobrillo.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MyAppBarState extends State<MyAppBar> {
  // Variable para controlar el brillo de la interfaz
  Brightness modoBrilllo = Brightness.dark;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('FoxHound APPs'),
      backgroundColor: Theme.of(context).primaryColor,
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
    );
  }
}
