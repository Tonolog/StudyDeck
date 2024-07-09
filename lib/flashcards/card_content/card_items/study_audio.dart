import 'package:flutter/material.dart';
import 'package:study_deck/flashcards/card_content/card_items/card_item.dart';
import 'package:audioplayers/audioplayers.dart';

/*  Class: StudyAudio, audio widget allows for pronunciation/example sentences
    Parameters: isOnFront,  bool,   see Item doc
                audioLink,  String, path to audio file: "audio/..."
              */
class StudyAudio extends StudyItem {
  /// Study Audio Constructor
  StudyAudio({super.key, required super.isOnFront, required this.audioLink});

  final String audioLink;

  final AudioPlayer audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () async {
        await audioPlayer.play(AssetSource(audioLink));
      },
      label: const Text(''),
      icon: const Icon(
        Icons.audio_file,
      ),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(15),
      ),
    );
  }
}
