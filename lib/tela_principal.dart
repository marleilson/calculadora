import 'package:calculadora/telaDeCalculo.dart';
import 'package:flutter/material.dart';
import 'cartaopadrao.dart';
import 'package:calculadora/constantes.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:calculadora/calculos.dart';


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
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    'O índice de massa corporal (IMC) é uma medida internacional usada para calcular se uma pessoa está no peso ideal.'
                        ' Desenvolvido pelo polímata Lambert Quételet no fim do século XIX, trata-se de um método fácil e rápido para a avaliação do nível de gordura de cada pessoa, sendo, por isso, um preditor internacional de obesidade adotado pela Organização Mundial da Saúde (OMS).'
                        '\nFonte: Wikipédia.',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),

            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CartaoPadrao(
                    filhoCartao: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('ALTURA',
                          style: KstyleDaDescricao,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(altura.toString(),
                              style: KstyleDoTexto,
                            ),
                            const Text('cm',
                              style: KstyleDaDescricao,
                            )
                            //Text(data),
                          ],
                        ),
                        Slider(
                          activeColor: KcorAtivaCartaoPadrao,
                          inactiveColor: KcorInativaCartaoPadrao,
                          onChanged: (double novoValorAltura) {
                            setState(() {
                              altura = novoValorAltura.round();
                            });
                          },
                          value: altura.toDouble(),
                          min: 50.0,
                          max: 220.0,
                        ),
                      ],
                    ),
                    cor: KcorInativaCartaoPadrao,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [Expanded(
                child: CartaoPadrao(
                  filhoCartao: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('PESO',
                        style: KstyleDaDescricao,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(peso.toString(),
                            style: KstyleDoTexto,
                          ),
                          const Text('Kg',
                            style: KstyleDaDescricao,
                          )
                          //Text(data),
                        ],
                      ),
                      Slider(
                        activeColor: KcorAtivaCartaoPadrao,
                        inactiveColor: KcorInativaCartaoPadrao,
                        onChanged: (double novoValorPeso) {
                          setState(() {
                            peso = novoValorPeso.round();
                          });
                        },
                        value: peso.toDouble(),
                        min: 0.0,
                        max: 140.0,
                      ),
                    ],
                  ),
                  cor: KcorInativaCartaoPadrao,
                ),
              ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {

              CalculadoraIMC calc = new CalculadoraIMC(altura: altura, peso: peso);

              Navigator.push(context, MaterialPageRoute(builder: (context)
              => new TelaDeResultado(
                valorIMC: calc.calcularIMC(),
                situacaoIMC: calc.obterResultado(),
                orientacaoIMC: calc.obterInterpretacao(),

              ),
              ),
              );
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 10),
              color: KcorBarrainferior,
              width: double.infinity,
              height: Kbarrainferior,
              child: Text('CALCULAR',

                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}



