import 'package:flutter/material.dart';

class NumericCounter extends StatefulWidget {
  final String titulo;
  final int maximo;

  const NumericCounter({
    super.key,
    required this.titulo,
    required this.maximo,
  });

  @override
  State<NumericCounter> createState() => _NumericCounterState();
}

class _NumericCounterState extends State<NumericCounter> {

  int _valor = 0;

  void _incrementar() {
    setState(() {
      _valor = _valor + 1;
    });
  }

  void _disminuir() {
    setState(() {
      _valor = _valor - 1;
    });
  }

  void _reiniciar() {
    setState(() {
      _valor = 0;
    });
  }


  String _obtenerMensaje() {
    if (_valor == 0) {
      return 'Aún no tienes seguidores';
    } else if (_valor == widget.maximo) {
      return '¡Llegaste al límite mi bro!';
    } else {
      return 'Sigue creciendo';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Icon(Icons.people, size: 48, color: Colors.deepPurple),
            const SizedBox(height: 8),
            Text(
              widget.titulo,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

    
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              decoration: BoxDecoration(
                color: const Color(0xFFEDE7F6),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                '$_valor',
                style: const TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  color:  Color.fromARGB(255, 22, 122, 216),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              _obtenerMensaje(),
              style: const TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton.icon(
                  onPressed: _valor > 0 ? _disminuir : null,
                  icon: const Icon(Icons.remove),
                  label: const Text('Restar'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:  Color.fromARGB(255, 22, 122, 216),
                    foregroundColor: Colors.white,
                  ),
                ),
                const SizedBox(width: 12),
                ElevatedButton.icon(
                  onPressed: _valor < widget.maximo ? _incrementar : null,
                  icon: const Icon(Icons.add),
                  label: const Text('Sumar'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 22, 122, 216),
                    foregroundColor: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: _reiniciar,
              child: const Text('Reiniciar'),
            ),
          ],
        ),
      ),
    );
  }
}