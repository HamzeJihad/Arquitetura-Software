import 'package:flutter/material.dart';

class GuideVoiceSelection extends StatefulWidget {
  const GuideVoiceSelection({super.key});

  @override
  _GuideVoiceSelectionState createState() => _GuideVoiceSelectionState();
}

class _GuideVoiceSelectionState extends State<GuideVoiceSelection> {
  // Lista de vozes do guia, representando diferentes opções disponíveis
  final List<String> guideVoices = [
    'Voz Guia 1',
    'Voz Guia 2',
    'Voz Guia 3',
    'Voz Guia 4',
    'Voz Guia 5',
    'Voz Guia 6',
  ];

  String? selectedGuideVoice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Trocar voz do guia'),
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
                  itemCount: guideVoices.length,
                  itemBuilder: (context, index) {
                    final String guideVoice = guideVoices[index];
                    return ListTile(
                      title: Text(guideVoice),
                      leading: Radio<String>(
                        value: guideVoice,
                        groupValue: selectedGuideVoice,
                        onChanged: (value) {
                          setState(() {
                            selectedGuideVoice = value;
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
