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
              return DropDownButton<String>(
                hint: const Text('Choose the Country'),
              );
            },
          ),
        ),
      ),
    );
  }
}
