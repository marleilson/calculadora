import 'package:calculadora/cartaopadrao.dart';
import 'package:calculadora/tela_principal.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class filhocartao extends StatelessWidget {
  filhocartao({required this.descricao, required this.icon, required this.corMeF, required this.corDoSexo});

  final String descricao;
  final IconData icon;
  final Color corMeF;
  final Color corDoSexo;

  @override
  Widget build(BuildContext context) {
    return CartaoPadrao(
      cor: corMeF,
      filhoCartao: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 80.0,
            color: corDoSexo,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            descricao,
            style: TextStyle(
                fontSize: 25.0,
                color: Colors.black,
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
