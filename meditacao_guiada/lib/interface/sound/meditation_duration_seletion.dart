import 'package:flutter/material.dart';

class MeditationDurationSelection extends StatefulWidget {
  const MeditationDurationSelection({super.key});

  @override
  _MeditationDurationSelectionState createState() =>
      _MeditationDurationSelectionState();
}

class _MeditationDurationSelectionState
    extends State<MeditationDurationSelection> {
  double _selectedDuration = 15.0; // Valor inicial da duração da meditação

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Escolher Duração'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Duração Selecionada: ${_selectedDuration.toInt()} minutos'),
              Slider(
                min: 5.0,
                max: 60.0,
                divisions: 11,
                value: _selectedDuration,
                onChanged: (newValue) {
                  setState(() {
                    _selectedDuration = newValue;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 64.0, right: 64),
                child: ElevatedButton(
                
                        onPressed: () {
                       
                        },
                        child: const Text('Salvar Configurações'),
                      ),
              ),
            ],
          ),
        ),
      ],
    ))));
  }
}
