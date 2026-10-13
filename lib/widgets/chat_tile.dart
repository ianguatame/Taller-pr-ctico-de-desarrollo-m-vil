import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String nombre;
  final String ultimoMensaje;
  final String hora;
  final String urlAvatar;
  final int mensajesSinLeer;

  const ChatTile({
    super.key,
    required this.nombre,
    required this.ultimoMensaje,
    required this.hora,
    required this.urlAvatar,
    required this.mensajesSinLeer,
  });

  @override
  Widget build(BuildContext context) {

    final bool hayNoLeidos = mensajesSinLeer > 0;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black12),
        ),
      ),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 26,
            backgroundImage: NetworkImage(urlAvatar),
          ),
          const SizedBox(width: 14),


          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  nombre,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  ultimoMensaje,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: hayNoLeidos ? Colors.black87 : Colors.grey,
                    fontWeight:
                        hayNoLeidos ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),

          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                hora,
                style: TextStyle(
                  fontSize: 12,
                  color: hayNoLeidos ? Colors.deepPurple : Colors.grey,
                ),
              ),
              const SizedBox(height: 6),
              if (hayNoLeidos)
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    color: Colors.deepPurple,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '$mensajesSinLeer',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}