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
    'Trilha Sonora 4',
    'Trilha Sonora 5',
    'Trilha Sonora 6',

    // ...
  ];

  String? selectedSoundtrack;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Escolher trilha sonora'),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
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
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Salvar Configurações'),
                ),
              ],
            ))));
  }
}
