import 'package:flutter/material.dart';
import 'package:meditacao_guiada/interface/voice/voice_simple_card.dart';

class VoiceSampleList extends StatefulWidget {
  const VoiceSampleList({super.key});

  @override
  State<VoiceSampleList> createState() => _VoiceSampleListState();
}

class _VoiceSampleListState extends State<VoiceSampleList> {
  final List<SampleVoice> sampleVoices = [
    SampleVoice(voiceName: 'Voz 1', locutorName: 'João'),
    SampleVoice(voiceName: 'Voz 2', locutorName: 'Guilherme'),
    SampleVoice(voiceName: 'Voz 3', locutorName: 'Maria'),
    SampleVoice(voiceName: 'Voz 4', locutorName: 'Isabella'),

    SampleVoice(voiceName: 'Voz 5', locutorName: 'Augusto'),

    // ...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Escolher vozes principais'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Contagem das amostras de voz selecionadas
              Text('Amostras Selecionadas: ${sampleVoices.where((voice) => voice.isSelected).length}'),
              ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(), // Impede o ListView de rolar dentro do ExpansionTile
                itemCount: sampleVoices.length,
                itemBuilder: (context, index) {
                  final SampleVoice sampleVoice = sampleVoices[index];
                  return VoiceSampleCard(
                    voiceName: sampleVoice.voiceName,
                    locutorName: sampleVoice.locutorName,
                    isSelected: sampleVoice.isSelected,
                    onSelect: (isSelected) {
                      setState(() {
                        sampleVoice.isSelected = isSelected;
                      });
                    },
                  );
                },
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Salvar Configurações'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SampleVoice {
  final String voiceName;
  final String locutorName;
  bool isSelected;

  SampleVoice({
    required this.voiceName,
    required this.locutorName,
    this.isSelected = false,
  });
}
