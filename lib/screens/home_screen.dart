import 'package:flutter/material.dart';
import 'package:tuns_app/models/tune_model.dart';
import 'package:tuns_app/widgets/tune_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static final Map<TuneModel, Color> sound = const {
    TuneModel(sound: "note1.wav"): Colors.red,
    TuneModel(sound: "note2.wav"): Colors.green,
    TuneModel(sound: "note3.wav"): Colors.yellow,
    TuneModel(sound: "note4.wav"): Colors.purple,
    TuneModel(sound: "note5.wav"): Colors.blue,
    TuneModel(sound: "note6.wav"): Colors.greenAccent,
    TuneModel(sound: "note7.wav"): Colors.orange,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Tunes"),
        centerTitle: true,
      ),

      body: Column(
        children: sound.entries.map((entry) {
          return Expanded(
            child: TuneWidget(
              color: entry.value,
              tune: entry.key,
            ),
          );
        }).toList(),
      ),
    );
  }
}
