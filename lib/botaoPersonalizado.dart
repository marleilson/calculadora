import 'package:calculadora/constantes.dart';
import 'package:flutter/material.dart';
import 'package:calculadora/tela_principal.dart';

class Botoes extends StatelessWidget {
  Botoes({required this.iconeBotao});
   final IconData iconeBotao;


  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconeBotao),
        onPressed: () {},
    elevation: 6.0,
      shape: CircleBorder(),
      fillColor: corDosBotoes,
      constraints: BoxConstraints.tightFor(
        width: 50,
        height: 50,
      ),
    );
  }
}
