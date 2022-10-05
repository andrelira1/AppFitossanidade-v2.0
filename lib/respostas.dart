import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  final String txResp;
  final void Function() quandoSelecionado;

  Respostas(this.txResp, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.white,
        ),
        onPressed: quandoSelecionado,
        child: Text(txResp),
      ),
    );
  }
}
