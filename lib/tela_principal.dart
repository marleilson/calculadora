import 'package:calculadora/filhocartao.dart';
import 'package:flutter/material.dart';
import 'cartaopadrao.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:calculadora/constantes.dart';
import 'package:calculadora/botaoPersonalizado.dart';


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
  int altura = 180;
  int peso = 70;
  int idade = 30;


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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Text('ALTURA',
                        style: styleDaDescricao,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(altura.toString(),
                                style:styleDoTexto,
                            ),
                            Text('cm',
                              style: styleDaDescricao,
                            )
                            //Text(data),
                          ],
                        ),
                        Slider(
                          activeColor: corAtivaCartaoPadrao,
                          inactiveColor: corInativaCartaoPadrao,
                            onChanged: (double novoValor) {
                              setState(() {
                                altura = novoValor.round();
                              });
                            },
                            value: altura.toDouble(),
                            min: 50.0,
                            max: 220.0,
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
                      filhoCartao: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('PESO',
                          style: styleDaDescricao,
                          ),
                          Text(peso.toString(),
                          style: styleDoTexto,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Botoes(
                                iconeBotao: FontAwesomeIcons.minus,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Botoes(
                                iconeBotao: FontAwesomeIcons.plus,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: CartaoPadrao(
                      cor: corInativaCartaoPadrao,
                      filhoCartao: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('IDADE',
                            style: styleDaDescricao,
                          ),
                          Text(idade.toString(),
                            style: styleDoTexto,
                          ),
                        ],
                      ),
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
