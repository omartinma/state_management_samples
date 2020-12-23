import 'package:flutter/material.dart';
import 'package:state_management_samples/core/models/character.dart';
import 'package:state_management_samples/core/repositories/character_repository.dart';

import '../locator.dart';

class CharacterDetailsProvider extends ChangeNotifier {
  var characterSelected;

  setCharacter(Character character) {
    characterSelected = character;
    notifyListeners();
  }
}
