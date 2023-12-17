import 'package:flutter/material.dart';

class MyIconButtonMode extends StatelessWidget {
  final VoidCallback? presiona;
  const MyIconButtonMode({
    super.key,
    required this.modoBrilllo,
    required this.presiona,
  });

  final Brightness modoBrilllo;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: presiona,
      icon: Icon(
        // Icono del botón cambia según el modo claro/oscuro actual
        modoBrilllo == Brightness.dark
            ? Icons.light_mode_outlined
            : Icons.dark_mode_outlined,
      ),
    );
  }
}
