import 'package:flutter/material.dart';

class W3 extends StatelessWidget {
  final VoidCallback onAdd; // call like this: onPressed: () => onAdd(),
  final VoidCallback on_noAdd;
  final double valor;
  const W3({super.key, required this.valor, required this.onAdd, required this.on_noAdd});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            color: Theme.of(context).colorScheme.inversePrimary,
            child: Text(
              valor.toStringAsFixed(1),
              key: const Key('W3Value'),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            color: Theme.of(context).colorScheme.inversePrimary,
            child: Column(
              children: [
                IconButton(
                     onPressed: () => onAdd(),
                    icon: const Icon(Icons.add),
                    key: const Key('W3Add')),
                IconButton(
                    onPressed: () => on_noAdd(),
                    icon: const Icon(Icons.remove),
                    key: const Key('W3Sub'))
              ],
            ),
          )
        ],
      ),
    );
    ;
  }
}
