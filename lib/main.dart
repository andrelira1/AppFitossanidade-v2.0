import 'package:flutter/material.dart';
import 'package:projeto_perguntas/ButtonMenu.dart';
//import 'package:projeto_perguntas/respostas.dart';
import './question.dart';
import './respostas.dart';
import './CamposDropDown.dart';
import './resultado.dart';
import 'ButtonMenu.dart';

const List<String> listSafra = <String>['M22', 'U22_1', 'TU22'];
const List<String> listTalhao = <String>['A411', 'B412', 'C413', 'M414'];
main() => runApp(AppFitossanidade());

class _FitossanidadeAppState extends State<AppFitossanidade> {
  var _campoSelecionado = 0;
  final _camposfito = const [
    {
      'texto': 'Safra: ',
      'respostas': ['M22', 'U22_1', 'TU22'],
    },
    {
      'texto': 'Talhao: ',
      'respostas': ['A414', 'B415', 'C416', 'D417', 'M411', 'M414'],
    },
    {
      'texto': 'Fundo Agrícola: ',
      'respostas': ['Nova Fronteira', 'Bandeirante', 'Cauca', 'Lote 415'],
    },
    {
      'texto': 'Cultura: ',
      'respostas': ['Manga', 'Uva', 'Cacau'],
    },
    {
      'texto': 'Variedade: ',
      'respostas': ['Tommy Atikins', 'Palmer', 'Keitt', 'Kent', 'Osten'],
    },
    {
      'texto': 'Monitor: ',
      'respostas': [
        'André Lira',
        'Bruno Guivares',
        'Daniel Lopes',
        'Isabela Thalita'
      ],
    },
  ];
  /* final camposfito = [
      'Safra: ',
      'Talhão: ',
      'FAgrícola: ',
      'Q1',
      'Q2',
      'Q3',
    ];*/

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _campoSelecionado++;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _campoSelecionado = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _campoSelecionado < _camposfito.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? _camposfito[_campoSelecionado].cast()['respostas']
        : [];

    // for (String textoResp in respostas) {
    //   widgets.add(Respostas(textoResp, _responder));
    // }

    return MaterialApp(
      home: Scaffold(
        drawer: butaoMenu(),
        appBar: AppBar(
          title: Text(
            'App Fitossanidade',
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
        ),
        body: temPerguntaSelecionada
            ? Column(
                children: <Widget>[
                  Questao(_camposfito[_campoSelecionado]['texto'].toString()),
                  //Respostas('Resposta 1', _responder),
                  //Respostas('Resposta 2', _responder),
                  //Respostas('Resposta 3', _responder),
                  ...respostas.map((t) => Respostas(t, _responder)).toList(),
                  // DropdownButtonSafra(),
                  // DropdownButtonSafra(),
                  // DropdownButtonSafra(),
                  // DropdownButtonTalhao(),
                ],
              )
            : Resultado(_reiniciarQuestionario),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          tooltip: 'Teste',
          child: Icon(Icons.bug_report_sharp),
          elevation: 16,
        ),
      ),
    );
  }
}

class AppFitossanidade extends StatefulWidget {
  // const AppFitossanidade({super.Key});

  // @overrride
  _FitossanidadeAppState createState() {
    return _FitossanidadeAppState();
  }
}

////----# Criando os Dropdowns
////----# Dropdown SAFRA
class DropdownButtonSafra extends StatefulWidget {
  // const DropdownButtonExample({super.key});

  // @override
  State<DropdownButtonSafra> createState() => _DropdownButtonSafraState();
}

////----# Classe Dropdown Safra
///

class _DropdownButtonSafraState extends State<DropdownButtonSafra> {
  String dropdownValue = listSafra.first;

  //var _listaSelecao = 0;
/*
   void _listarSafra() {
    setState(() {
      _listaSelecao++;
    });
  }
*/
  //  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_drop_down),
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple, fontSize: 20),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
          });
        },
        items: listSafra.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

////----# Dropdown TALHÃO
class DropdownButtonTalhao extends StatefulWidget {
  State<DropdownButtonTalhao> createState() => _DropdownButtonTalhaoState();
}

class _DropdownButtonTalhaoState extends State<DropdownButtonTalhao> {
  String dropdownValue = listTalhao.first;

  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_drop_down),
        iconEnabledColor: Colors.blue,
        iconSize: 30,
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple, fontSize: 20),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String? value) {
          setState(() {
            dropdownValue = value!;
          });
        },
        items: listTalhao.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
