import 'package:flutter/material.dart';
//import 'package:projeto_perguntas/respostas.dart';
import './question.dart';
import './respostas.dart';
import './CamposDropDown.dart';

const List<String> listSafra = <String>['Manga_2022', 'Manga_2023', 'Uva_2022', 'Uva_2023'];

main() => runApp(AppFitossanidade());

class _FitossanidadeAppState extends State<AppFitossanidade> {
  var _campoSelecionado = 0;
  final _camposfito = const [
    {
      'texto': 'Safra: ',
      'respostas': ['Manga_2022', 'Manga_2023', 'Uva_2022', 'Uva_2023'],
    },
    {
      'texto': 'Talhao: ',
      'respostas': ['A1', 'B1', 'C1', 'D1', 'E1'],
    },
    {
      'texto': 'Fazenda: ',
      'respostas': ['Farm1', 'Farm2', 'Farm3', 'Frm4'],
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
        'Fulano de Tal',
        'Beltrano da Manga',
        'Siclano da Sanfona'
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
                ],
              )
            : Center(
                child: Text(
                'Concluído!',
                style: TextStyle(fontSize: 28),
              )),
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
