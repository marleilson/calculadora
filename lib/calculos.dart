import 'dart:math';

//BASE DE CALCULOS IMC
class CalculadoraIMC {
  CalculadoraIMC({required this.altura, required this.peso});

  final int altura;
  final int peso;
  double _imc = 0.0;

  //valor IMC
  String calcularIMC(){
    _imc = peso / pow(altura / 100, 2);
    return _imc.toStringAsFixed(1);
  }
//situação
  String obterResultado(){
    if (_imc >= 25.0){
      return 'Acima do peso';
    }else if (_imc > 18.5){
      return 'Normal';
    }else{
      return 'Abaixo do peso';
    }

  }
//orientações IMC
  String obterInterpretacao(){
    if (_imc >= 25.0){
      return 'Caminhe, corra, mova-se!';
    }else if (_imc > 18.5){
      return 'Está normal, mas não vacila!';
    }else{
      return 'Bora comer né? Mas de forma saldavél!';
    }

  }


}