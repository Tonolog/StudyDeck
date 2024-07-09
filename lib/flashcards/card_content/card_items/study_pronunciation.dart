import 'package:flutter/material.dart';
import 'package:study_deck/flashcards/card_content/card_items/card_item.dart';

/*  Class: StudyPronunciation, String Widget handles written pronunciation
    Parameters: isOnFront,      bool,   see Item doc
                pronunciation,  String, text to be displayed on card
*/
class StudyPronunciation extends StudyItem {
  /// Study Pronunciation Constructor
  const StudyPronunciation(
      {super.key, required super.isOnFront, required this.pronunciation});

  final String pronunciation;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: pronunciation,
          style: const TextStyle(
            color: Colors.black,
          )),
    );
  }
}
