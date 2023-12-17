import 'package:flutter/material.dart';
import 'package:pruebas_limpio/components/botones/modobrillo.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titulo;
  final Brightness modoBrillo;
  final VoidCallback onPresiona;

  const MyAppBar({
    super.key,
    required this.titulo,
    required this.modoBrillo,
    required this.onPresiona,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        titulo,
        style: TextStyle(color: Theme.of(context).primaryColorLight),
      ), // Título de la barra de aplicación
      backgroundColor: Theme.of(context).primaryColor,
      actions: [
        // Botón de cambio de modo claro/oscuro en la barra de aplicación
        MyIconButtonMode(
          modoBrilllo: modoBrillo,
          presiona: onPresiona,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
