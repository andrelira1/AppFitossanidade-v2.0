import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  //const Resultado({ Key? key }) : super(key: key);
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.quandoReiniciarQuestionario);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(
          'Concluído!',
          style: TextStyle(fontSize: 28),
        )),
        TextButton(
          //  color: Colors.blue,
          //  textColor: Colors.white,
          child: Text(
            'Tela de Início',
            style: TextStyle(
              fontSize: 18,
              color: Colors.blue,
            ),
          ),
          onPressed: quandoReiniciarQuestionario,
        )
      ],
    );
  }
}
