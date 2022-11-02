import 'package:calculadora/tela_principal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CalculadoraIMC());
}

class CalculadoraIMC extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF616161),
        scaffoldBackgroundColor: Color(0xFF616161),
      ),
      debugShowCheckedModeBanner: false,
      home: Telaprincipal(),
    );
  }
}


