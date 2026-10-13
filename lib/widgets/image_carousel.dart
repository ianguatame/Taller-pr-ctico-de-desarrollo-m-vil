import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 12, 16, 8),
          child: Text(
            'Historias pa presumir',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),

        SizedBox(
          height: 170,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            children: const <Widget>[
              _TarjetaCarrusel(
                titulo: 'Gaming',
                urlImagen: 'https://assets.newsweek.com/wp-content/uploads/2025/08/1570653-valorant-project-gameplay-reveal-trailer.jpg?w=1600&quality=80&webp=1',
              ),
              _TarjetaCarrusel(
                titulo: 'Mi mascota',
                urlImagen: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-SaLx2mk6-5OpqBXVxWkb_aG-1yIstnb7I9sIhEKTLr_1k3Ql5Lm8qEI&s=10',
              ),
              _TarjetaCarrusel(
                titulo: 'Viajes',
                urlImagen: 'https://images.contentstack.io/v3/assets/bltcb97f12fda51b6c0/bltb3f1e814fdd28c1a/66c5198f5c9bfe149b0f1464/paris_a_traves_del_tiempo.jpg?auto=webp&format=pjpg&quality=80&width=1200&height=1200&fit=crop&crop=1200:630,smart',
              ),
              _TarjetaCarrusel(
                titulo: 'Carros',
                urlImagen: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZ52eBr7YDbkImmuZjwfHoqYCp6JGuqmby9d84Pwk91kI1bTHq7Cb6mSs&s=10',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _TarjetaCarrusel extends StatelessWidget {
  final String titulo;
  final String urlImagen;

  const _TarjetaCarrusel({
    required this.titulo,
    required this.urlImagen,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(8),
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color.fromARGB(255, 22, 122, 216), width: 2),
        image: DecorationImage(
          image: NetworkImage(urlImagen),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          titulo,
          style: const TextStyle(
            color: Color.fromARGB(255, 236, 234, 234),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}