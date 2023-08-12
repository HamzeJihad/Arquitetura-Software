import 'package:flutter/material.dart';
import 'package:meditacao_guiada/interface/feedback/meditation_feedback.dart';
import 'package:meditacao_guiada/interface/sound/meditation_duration_seletion.dart';
import 'package:meditacao_guiada/interface/sound/sound_track_seletion.dart';
import 'package:meditacao_guiada/interface/voice/guide_voice_selection.dart';
import 'package:meditacao_guiada/interface/voice/voice_sample_list.dart';
import 'package:meditacao_guiada/models/text_field_default.dart';

class MeditGuideInterface extends StatefulWidget {
  const MeditGuideInterface({super.key});

  @override
  State<MeditGuideInterface> createState() => _MeditGuideInterfaceState();
}

class _MeditGuideInterfaceState extends State<MeditGuideInterface> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MeditGuide'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  child: Text('J'),
                ),
                title: Text('Jacson Rodrigues'),
                subtitle: Text('Arquitetura de software'),
              ),
              TextFieldTwoItens(
                  icon: const Icon(Icons.mic, color: Colors.blueGrey),
                  text: 'Escolher voz',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const VoiceSampleList()));
                  }),

              TextFieldTwoItens(
                  icon: const Icon(Icons.access_time, color: Colors.blueGrey),
                  text: 'Duração da Meditação',
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => const MeditationDurationSelection()));
                  }),

              TextFieldTwoItens(
                  icon: const Icon(Icons.music_note, color: Colors.blueGrey),
                  text: 'Trilha sonora',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const SoundtrackSelection()));
                  }),

              TextFieldTwoItens(
                  icon: const Icon(Icons.volume_up, color: Colors.blueGrey),
                  text: 'Trocar voz do guia',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const GuideVoiceSelection()));
                  }),

              TextFieldTwoItens(
                  icon: const Icon(Icons.feedback, color: Colors.blueGrey),
                  text: 'Dar feedback do app',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => MeditationFeedback()));
                  }),


                
                  
            ],
          ),
        ),
      ),
    );
  }
}
