import 'package:flutter/material.dart';

class DropDownWidget extends StatelessWidget {
  DropDownWidget({super.key});
  final dropValue = ValueNotifier('');
  final dropOptions = ['Porsche', 'BMW', 'Audi', 'Ferrari', 'Volkswagen'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Center(
            child: ValueListenableBuilder(
              valueListenable: dropValue,
              builder: (BuildContext context, String value, _) {
                return DropdownButton<String>(
                  hint: const Text('Choose the Country'),
                  value: (value.isEmpty) ? null : value,
                  onChanged: (selection) =>
                      dropValue.value = selection.toString(),
                  items: dropOptions
                      .map(
                        (option) => DropdownMenuItem(
                          value: option,
                          child: Text(option),
                        ),
                      )
                      .toList(),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
