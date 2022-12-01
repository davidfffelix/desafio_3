import 'package:flutter/material.dart';

class NewCustomDropDownWidget extends StatelessWidget {
  NewCustomDropDownWidget({super.key});
  final dropValue = ValueNotifier('');
  final dropOptions = ['Porsche', 'BMW', 'Audi', 'Ferrari', 'Volkswagen'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              color: Colors.white,
              child: Center(
                child: ValueListenableBuilder(
                  valueListenable: dropValue,
                  builder: (BuildContext context, String value, _) {
                    return DropdownButton<String>(
                      icon: const Icon(Icons.arrow_downward_sharp),
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
          ],
        ),
      ),
    );
  }
}
