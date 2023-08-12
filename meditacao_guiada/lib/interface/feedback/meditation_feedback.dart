import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MeditationFeedback extends StatefulWidget {
  @override
  _MeditationFeedbackState createState() => _MeditationFeedbackState();
}

class _MeditationFeedbackState extends State<MeditationFeedback> {
  String _selectedFeedback = ''; // Armazena o feedback selecionado

  RatingBar ratingBarItem() {
    return RatingBar.builder(
        initialRating: 4,
        itemCount: 5,
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return const Icon(
                Icons.sentiment_very_dissatisfied,
                color: Colors.red,
              );
            case 1:
              return const Icon(
                Icons.sentiment_dissatisfied,
                color: Colors.redAccent,
              );
            case 2:
              return const Icon(
                Icons.sentiment_neutral,
                color: Colors.amber,
              );
            case 3:
              return const Icon(
                Icons.sentiment_satisfied,
                color: Colors.lightGreen,
              );
            case 4:
              return const Icon(
                Icons.sentiment_very_satisfied,
                color: Colors.green,
              );
          }
          return const SizedBox();
        },
        onRatingUpdate: (rating) {});
  }

  final List<String> feedbackOptions = [
    'Ótima experiência!',
    'Faltou clareza nas instruções.',
    'Gostaria de mais variedade de temas.',
    // ...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Feedback do app voz'),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                      ratingBarItem(),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemCount: feedbackOptions.length,
                  itemBuilder: (context, index) {
                    final String feedbackOption = feedbackOptions[index];
                    return RadioListTile<String>(
                      title: Text(feedbackOption),
                      value: feedbackOption,
                      groupValue: _selectedFeedback,
                      onChanged: (value) {
                        setState(() {
                          _selectedFeedback = value!;
                        });
                      },
                    );
                  },
                ),
          
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Enviar Feedback'),
                  ),
                ),
              ],
            ))));
  }
}
