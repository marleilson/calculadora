import 'package:calculadora/filhocartao.dart';
import 'package:flutter/material.dart';
import 'cartaopadrao.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const corAtivaCartaoPadrao = Colors.green;
const corInativaCartaoPadrao = Color(0xFF9E9E9E);
const barrainferior = 80.0;
const corBarrainferior = Colors.green;
const styleDoTexto = TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900);

enum CorSexo {
  Masculino,
  Feminino,
}

class Telaprincipal extends StatefulWidget {
  const Telaprincipal({Key? key}) : super(key: key);

  @override
  State<Telaprincipal> createState() => _TelaprincipalState();
}

class _TelaprincipalState extends State<Telaprincipal> {

  CorSexo? sexoSelecionado;


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
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          sexoSelecionado = CorSexo.Masculino;
                        });
                      },
                      child: filhocartao(
                        corMeF: sexoSelecionado == CorSexo.Masculino
                            ? corAtivaCartaoPadrao
                            : corInativaCartaoPadrao,
                        descricao: 'MASCULINO',
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          sexoSelecionado = CorSexo.Feminino;
                        });
                      },
                      child: filhocartao(
                        corMeF: sexoSelecionado == CorSexo.Feminino
                            ? corAtivaCartaoPadrao
                            : corInativaCartaoPadrao,
                        descricao: 'FEMININO',
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: CartaoPadrao(
                    filhoCartao: Column(
                      children:[
                        Text('ALTURA',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                        ),
                        Row(
                          children: [
                            Text('180',
                                style:styleDoTexto,
                            ),
                          ],

                        ),
                      ],
                    ),
                    cor: corInativaCartaoPadrao,
                  ),
                ),
              ],
            ),
            ),
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
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 10),
              color: corBarrainferior,
              width: double.infinity,
              height: barrainferior,
              child: Text(
                'CALCULAR',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ));
  }
}
