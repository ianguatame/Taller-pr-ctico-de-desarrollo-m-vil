import 'package:flutter/material.dart';

import '../widgets/chat_tile.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        ChatTile(
          nombre: 'Michael Jackson',
          ultimoMensaje: 'Un gusto verte de nuevo',
          hora: '11:02',
          urlAvatar: 'https://m.media-amazon.com/images/M/MV5BMTM1NjExNjg1OV5BMl5BanBnXkFtZTcwMTQ0NzIwMw@@._V1_FMjpg_UX1000_.jpg',
          mensajesSinLeer: 2,
        ),
        ChatTile(
          nombre: 'Westcol',
          ultimoMensaje: 'Dale, ya te paso los 500 mil',
          hora: '10:15',
          urlAvatar: 'https://www.bloomberglinea.com/resizer/v2/QS347XKY6JHURK64QMTTFR3U6Y.jpg?auth=6a11b660608970bafaa3ea89a71956d067087a6d1be9f6421a8a24ea4944e11f&width=800&height=600&quality=80&smart=true',
          mensajesSinLeer: 1,
        ),
        ChatTile(
          nombre: 'The Grefg',
          ultimoMensaje: 'Mañana maraton, te apuntas?',
          hora: '9:58',
          urlAvatar: 'https://cdn.infolavelada.com/boxeadores/thegrefg/01-sm.webp',
          mensajesSinLeer: 0,
        ),
        ChatTile(
          nombre: 'Tom cruise',
          ultimoMensaje: 'Me voy a tirar de un avion',
          hora: 'Ayer',
          urlAvatar: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9xuI_mtcsMqJfsYZ2EcB13tvP5cG2bgbzbWq0vFoyfzHg8JiaFvDvfAKl&s=10',
          mensajesSinLeer: 7,
        ),
        ChatTile(
          nombre: 'Nikola Tesla',
          ultimoMensaje: 'Gracias por tu ayuda.',
          hora: 'Ayer',
          urlAvatar: 'https://content-historia.nationalgeographic.com.es/medio/2019/07/09/nikola-tesla_b0f93a52_1280x1671.jpeg',
          mensajesSinLeer: 0,
        ),
        ChatTile(
          nombre: 'Maluma',
          ultimoMensaje: 'Mañana salimos o que?',
          hora: 'Sáb',
          urlAvatar: 'https://peopleenespanol.com/thmb/M_Gy_45C9rOWyLih7n_9g8DgSx4=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-2277625587-d489d1cfc6cd4126ab2f686742699db2.jpg',
          mensajesSinLeer: 1,
        ),
        ChatTile(
          nombre: 'Mamá',
          ultimoMensaje: 'Que te vaya bien hijo',
          hora: '9:30',
          urlAvatar: 'https://hips.hearstapps.com/hmg-prod/images/anne-hathaway-cultura-del-odio-1648049033.jpg?crop=0.6669921875xw:1xh;center,top&resize=640:*',
          mensajesSinLeer: 3,
        ),
        ChatTile(
          nombre: 'Club de valorant',
          ultimoMensaje: 'Daniela: Ayer subí a platino.',
          hora: 'Vie',
          urlAvatar: 'https://img.redbull.com/images/c_crop,x_321,y_0,h_1049,w_787/c_fill,w_450,h_600/q_auto,f_auto/redbullcom/2020/4/19/d1jrdrpou7hvstulfozq/red-bull-campus-clutch-valorant-agents-phoenix-jett',
          mensajesSinLeer: 0,
        ),
      ],
    );
  }
}