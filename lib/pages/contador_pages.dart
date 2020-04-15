import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'PaulApp',
            style: TextStyle(color: Colors.black.withOpacity(0.8)),
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(216, 242, 242, 1),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Número de taps: ',
                style: _estiloTexto,
              ),
              Text(
                '$_conteo',
                style: _estiloTexto,
              )
            ],
          ),
        ),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(
          child: Icon(Icons.autorenew, color: Colors.black38),
          onPressed: (_reset),
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.remove, color: Colors.black38),
          onPressed: (_remove),
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.add, color: Colors.black38),
          onPressed: (_add),
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        ),
        SizedBox(width: 5.0),
      ],
    );
  }

  void _add() {
    setState(() => _conteo++);
  }

  void _remove() {
    setState(() => _conteo--);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }
}
