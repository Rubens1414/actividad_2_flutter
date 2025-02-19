import 'package:flutter/material.dart';

class W2 extends StatelessWidget {
  const W2({super.key, required this.valor});
  final double valor;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: const Key('W2'),
      width: 200,
      height: 200,
      color:(valor.abs() % 1 < 0.4) ? Colors.grey : const Color.fromARGB(255, 255, 56, 89), // should be grey when the decimal is bellow 0.4
    );
  }
}
