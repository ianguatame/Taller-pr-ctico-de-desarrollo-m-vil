import 'package:flutter/material.dart';

class PromotionalBanner extends StatelessWidget {
  final String titulo;
  final String descripcion;
  final IconData icono;
  final Color colorFondo;
  final String textoBoton;

  const PromotionalBanner({
    super.key,
    required this.titulo,
    required this.descripcion,
    required this.icono,
    required this.colorFondo,
    required this.textoBoton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(12, 8, 12, 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorFondo,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  titulo,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  descripcion,
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color.fromARGB(255, 22, 122, 216),
                  ),
                  child: Text(textoBoton),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Icon(icono, size: 64, color:const Color.fromARGB(255, 241, 241, 241)),
        ],
      ),
    );
  }
}