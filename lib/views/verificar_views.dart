import '../controllers/anio_controller.dart';
import 'package:flutter/material.dart';

class VerificarView extends StatelessWidget {
  //declaro y mapeo objetos
  TextEditingController _anioC = TextEditingController();
  //instanciar
  AnioController _controller = AnioController();
  //diseño de la vista
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Verificar año bisiesto')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _anioC,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Ingrese el año',
                labelStyle: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: Theme.of(context).elevatedButtonTheme.style,
              onPressed: () {
                final anio = int.tryParse(_anioC.text);
                if (anio == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Ingrese un año válido',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  );
                  return;
                }

                final esBisiesto = _controller.verificarBisiesto(anio);
                if (!esBisiesto) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'El año $anio no es bisiesto',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  );
                  return;
                }
                //pasando argumentos
                Navigator.pushNamed(
                  context,
                  '/resultado',
                  arguments: {'anio': anio},
                );
              },
              child: Text(
                'Verificar',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
