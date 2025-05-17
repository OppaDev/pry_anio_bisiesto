import 'package:flutter/material.dart';
import '../controllers/anio_controller.dart';

class ResultadoViews extends StatelessWidget {
  final _controller = AnioController();
  TextEditingController _anioC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final orientacion = MediaQuery.of(context).orientation;
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final int anio = args['anio'];
    final lista = _controller.obtenerUltimos(anio);

    return Scaffold(
      appBar: AppBar(title: Text('Lista de años bisiestos')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: lista.length,
          itemBuilder: (context, index) {
            final anio = lista[index];
            return Card(
              child: ListTile(
                title: Text(
                  'Año: $anio',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                subtitle: Text(
                  'El año $anio es bisiesto',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                leading: Icon(Icons.calendar_today, size: 40),
                trailing: Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 40,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
