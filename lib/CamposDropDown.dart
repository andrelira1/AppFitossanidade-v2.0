/*import 'package:flutter/material.dart';

////----# Dropdown TALHÃO
class DropdownButtonTalhao extends StatefulWidget {
  State<DropdownButtonTalhao> createState() => _DropdownButtonTalhaoState();
    final String DdTeste;
  DropdownButtonTalhao(this.DdTeste);
}

class _DropdownButtonTalhaoState extends State<DropdownButtonTalhao> {


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
        //items: listTalhao.map<DropdownMenuItem<String>>((String value) {
          items: DdTeste.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
*/