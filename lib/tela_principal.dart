import 'package:calculadora/filhocartao.dart';
import 'package:flutter/material.dart';
import 'cartaopadrao.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const corAtivaCartaoPadrao = Colors.green;
const corInativaCartaoPadrao = Color(0xFF9E9E9E);
const barrainferior = 80.0;
const corBarrainferior = Colors.green;

class Telaprincipal extends StatefulWidget {
  const Telaprincipal({Key? key}) : super(key: key);

  @override
  State<Telaprincipal> createState() => _TelaprincipalState();
}

class _TelaprincipalState extends State<Telaprincipal> {

  Color corInativaMasculino = corInativaCartaoPadrao;
  Color corInativaFeminino = corInativaCartaoPadrao;

  //if()

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          //backgroundColor: Colors.black54,
          title: const Text(
            'Calculadora de IMC',
            textAlign: TextAlign.center,
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
              children: [
                Expanded(
                  child: filhocartao(
                    descricao: 'MASCULINO',
                    icon: FontAwesomeIcons.mars,
                  ),
                ),
                Expanded(
                  child: filhocartao(
                    descricao: 'FEMININO',
                    icon: FontAwesomeIcons.venus,
                  ),
                ),
              ],
            ),),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: CartaoPadrao(
                    cor: corInativaCartaoPadrao,
                  ),
              ),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: CartaoPadrao(
                    cor: corInativaCartaoPadrao,
                  ),
                ),
                Expanded(
                  child: CartaoPadrao(
                    cor: corInativaCartaoPadrao,
                  ),
    ),
              ],
            )),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 10),
              color: corBarrainferior,
              width: double.infinity,
              height: barrainferior,
              child: Text('CALCULAR',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ],
        )
    );
  }
}

