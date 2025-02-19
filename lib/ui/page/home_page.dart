import 'package:flutter/material.dart';

import '../widget/w1.dart';
import '../widget/w2.dart';
import '../widget/w3.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // para obtener un valor con un solo decimal, correctamente redondeado
  // y asignarlo a un string, se puede usar:
  // double.parse(_value.toStringAsFixed(1));
  double _valor=0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {_resetear();},
                  icon: const Icon(Icons.refresh),
                  key: const Key('Refresh')),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                W1(valor: _valor, onAdd:_agregar_decimal,on_noAdd: _quitar_decimal,), 
                W2(valor:_valor),
                W3(valor: _valor, onAdd:_agregar_entero, on_noAdd: _quitar_entero)],
            ),
          ),
        ],
      )),
    );
  }
  void _agregar_decimal(){
     _incrementar(0.1);
  }
  void _agregar_entero(){
    _incrementar(1.0);
  }
  void _quitar_decimal(){
     _incrementar(-0.1);
  }
  void _quitar_entero(){
    _incrementar(-1.0);
  }
  void _incrementar(double incrementar){
    setState(() {
      _valor=  double.parse((_valor+incrementar).toStringAsFixed(1));
    });
  }
  void _resetear(){
    setState(() {
      _valor=0.0;
    });
  }
}
