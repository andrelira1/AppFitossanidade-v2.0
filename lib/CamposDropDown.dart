/*import 'package:flutter/material.dart';

const List<String> listSafra = <String>['M22', 'U22_1', 'TU22'];
class DropdownButtonSafra extends StatefulWidget {
  // const DropdownButtonExample({super.key});

final String dropdownValue;

  DropdownButtonSafra(this.dropdownValue);
  // @override
  State<DropdownButtonSafra> createState() => DropdownButtonSafraState();
}

//class CampoDropDown extends StatelessWidget {
 // final List dropdownValue;

 // CampoDropDown(this.dropdownValue);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      //value: dropdownValue,
      icon: const Icon(Icons.arrow_circle_down),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
      //  setState(() {
      //    this.dropdownValue = value!;
      //  });
      },
      items: listSafra.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
*/