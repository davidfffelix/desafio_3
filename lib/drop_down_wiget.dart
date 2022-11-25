import 'package:flutter/material.dart';

class DropDownWidget extends StatelessWidget {
  DropDownWidget({super.key});
  final dropValue = ValueNotifier('');
  final dropOptions = ['Porsche', 'BMW', 'Audi', 'Ferrari', 'Volkswagen'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ValueListenableBuilder(
            valueListenable: dropValue,
            builder: (BuildContext context, String value, _) {
              return DropdownButton<String>(
                items: [],
                hint: const Text('Choose the Country'),
                value: (value.isEmpty) ? null : value,
                onChanged: (selection) {
                  // Para cada mudança dentro do DP, ele retorna uma selection.
                  dropValue.value = selection.toString();
                  items: dropOptions
                      .map((option) => DropdownMenuItem(
                            value: option,
                            child: Text(option),
                            // Quando o selecionar option no value, o Flutter vai
                            //"chamar" o onChanged e valor será alterar no DP.
                          ))
                      .toList();
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
