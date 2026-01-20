import 'package:audioplayers/audioplayers.dart';

class TuneModel {
  final String sound;
  
  const TuneModel({required this.sound});


  playSound() async {
      final player = AudioPlayer();
      await player.play(AssetSource(sound)); // will immediately start playing
  }
  
}
