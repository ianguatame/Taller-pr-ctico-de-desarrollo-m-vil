import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  final String nombreUsuario;
  final String urlAvatar;
  final String urlImagen;
  final String descripcion;
  final int likes;
  final int comentarios;

  const PostCard({
    super.key,
    required this.nombreUsuario,
    required this.urlAvatar,
    required this.urlImagen,
    required this.descripcion,
    required this.likes,
    required this.comentarios,
  });

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
 
  bool _meGusta = false;

  @override
  Widget build(BuildContext context) {
  
    int likesMostrados = widget.likes;
    if (_meGusta) {
      likesMostrados = widget.likes + 1;
    }

    return Card(
      color: const Color.fromARGB(255, 22, 122, 216),
      elevation: 3,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 22,
                  backgroundImage: NetworkImage(widget.urlAvatar),
                ),
                const SizedBox(width: 12),
                Text(
                  widget.nombreUsuario,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),


          Image.network(
            widget.urlImagen,
            width: double.infinity,
            height: 220,
            fit: BoxFit.cover,
          ),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    _meGusta ? Icons.favorite : Icons.favorite_border,
                    color: _meGusta ? Colors.red : const Color.fromARGB(255, 238, 237, 237),
                  ),
                  onPressed: () {
                    setState(() {
                      _meGusta = !_meGusta;
                    });
                  },
                ),
                Text('$likesMostrados'),
                const SizedBox(width: 16),
                IconButton(
                  icon: const Icon(
                    Icons.chat_bubble_outline,
                    color: Color.fromARGB(255, 248, 246, 246),
                  ),
                  onPressed: () {},
                ),
                Text('${widget.comentarios}'),
              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 14),
            child: Text(widget.descripcion),
          ),
        ],
      ),
    );
  }
}