// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class SoundtrackSelection extends StatefulWidget {
  const SoundtrackSelection({super.key});

  @override
  _SoundtrackSelectionState createState() => _SoundtrackSelectionState();
}

class _SoundtrackSelectionState extends State<SoundtrackSelection> {
  // Lista de trilhas sonoras, representando diferentes opções disponíveis
  final List<String> soundtracks = [
    'Trilha Sonora 1',
    'Trilha Sonora 2',
    'Trilha Sonora 3',
    // ...
  ];

  String? selectedSoundtrack;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title:const Text('Escolher Trilha Sonora'), // Título do menu recolhível
      children: [
        ListTile(
          title: const Text('Nenhuma Trilha Sonora'),
          leading: Radio<String>(
            value: '',
            groupValue: selectedSoundtrack,
            onChanged: (value) {
              setState(() {
                selectedSoundtrack = value;
              });
            },
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics:const ClampingScrollPhysics(),
          itemCount: soundtracks.length,
          itemBuilder: (context, index) {
            final String soundtrack = soundtracks[index];
            return ListTile(
              title: Text(soundtrack),
              leading: Radio<String>(
                value: soundtrack,
                groupValue: selectedSoundtrack,
                onChanged: (value) {
                  setState(() {
                    selectedSoundtrack = value;
                  });
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
