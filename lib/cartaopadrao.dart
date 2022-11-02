import 'package:flutter/material.dart';

class CartaoPadrao extends StatelessWidget {
CartaoPadrao({required this.cor, this.filhoCartao});

final Color cor;
final Widget? filhoCartao;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: filhoCartao,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: cor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}