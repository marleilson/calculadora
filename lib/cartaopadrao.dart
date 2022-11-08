import 'package:flutter/material.dart';

class CartaoPadrao extends StatelessWidget {
CartaoPadrao({required this.cor, this.filhoCartao});

final Color cor;
final Widget? filhoCartao;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: filhoCartao,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: cor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}