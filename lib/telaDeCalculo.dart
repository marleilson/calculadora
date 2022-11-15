import 'package:calculadora/cartaopadrao.dart';
import 'package:calculadora/constantes.dart';
import 'package:calculadora/tela_principal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/navigator.dart';

class TelaDeResultado extends StatelessWidget {

  TelaDeResultado({required this.situacaoIMC, required this.valorIMC, required this.orientacaoIMC});

final String valorIMC;
final String situacaoIMC;
final String orientacaoIMC;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.center,
                child: const Text('Resultado',
                style: TextStyle(color: Colors.green,
                fontSize: 60.0, fontWeight: FontWeight.bold),),
          ),
          ),
          Expanded(
            flex: 5,
            child: CartaoPadrao(cor: KcorInativaCartaoPadrao,
              filhoCartao: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(situacaoIMC.toUpperCase(),
                  style: KResultadoCor,
                  textAlign: TextAlign.center,),
                  Text(valorIMC,
                  style: KIMCCor,),
                  Text(orientacaoIMC,
                  style: KInformacoesCor,
                  textAlign: TextAlign.center,)
                ],
              ),
              ),
            ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context, MaterialPageRoute(builder: (context)
              => Telaprincipal(),
              ),
              );
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 10),
              color: KcorBarrainferior,
              width: double.infinity,
              height: Kbarrainferior,
              child: Text('RECALCULAR',
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
