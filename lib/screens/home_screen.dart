import 'package:flutter/material.dart';

import '../widgets/post_card.dart';
import '../widgets/promotional_banner.dart';
import '../widgets/image_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 8),
      children: const <Widget>[
        PromotionalBanner(
          titulo: 'Invite a sus parceros',
          descripcion: 'Conoce nuevas personas',
          icono: Icons.add_circle,
          colorFondo: Color.fromARGB(255, 245, 0, 0),
          textoBoton: 'Invitar panitas',
        ),
        ImageCarousel(),
        PostCard(
          nombreUsuario: '433 ',
          urlAvatar: 'https://media.licdn.com/dms/image/v2/D4E0BAQHJgC4g33p4yw/company-logo_200_200/B4EZd.Vt0.GwAQ-/0/1750171311847/by433_logo?e=2147483647&v=beta&t=Ho9UgP1jd21W2Tnwv2taeaZkJjG44DR_p8hMk9Q1Et0',
          urlImagen: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlGoU9t2-2sOYp0wBYQMTDCbMQ3ZEAZGGOVvqwxVY654a9wUxGU4HG1b4&s=10',
          descripcion: 'Who will win? ⚽',
          likes: 128,
          comentarios: 14,
        ),
        PostCard(
          nombreUsuario: 'shein_men',
          urlAvatar: 'https://logodownload.org/wp-content/uploads/2021/06/shein-logo-0.png',
          urlImagen: 'https://img.ltwebstatic.com/v4/j/spmp/2026/08/06/c1/1786002244eff7833a9aa8aef4a25028b9c1d8d94c_thumbnail_405x552.jpg',
          descripcion: 'Estilo y elegancia en cada prenda.',
          likes: 86,
          comentarios: 9,
        ),
        PostCard(
          nombreUsuario: 'Feid',
          urlAvatar: 'https://images.squarespace-cdn.com/content/v1/67da40e8ba50f62df90a2510/dcbcfc54-7c76-4578-a871-12711a69c79f/NPB_7380.jpg',
          urlImagen: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA-R8SURncEBaVU5eCr43atmG-Y98H7m_G8lrT_6DBPZCx4dzb-N3C5d0A&s=10',
          descripcion: '💚💚💚',
          likes: 203,
          comentarios: 31,
        ),
      ],
    );
  }
}