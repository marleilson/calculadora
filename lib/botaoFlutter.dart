import 'package:calculadora/constantes.dart';
import 'package:flutter/material.dart';
import 'package:calculadora/tela_principal.dart';

class Botoes extends StatelessWidget {
  Botoes({required this.iconeBotao, required this.aoPressionar});
  final IconData iconeBotao;
  final Function aoPressionar;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Icon(iconeBotao),
      onPressed: aoPressionar(),
    );
  }
}