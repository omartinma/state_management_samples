import 'package:flutter/material.dart';
import 'package:state_management_samples/core/models/character.dart';
import 'package:state_management_samples/core/repositories/character_repository.dart';

import '../locator.dart';

class CharactersProvider extends ChangeNotifier {
  var charactersList = List<Character>();

  CharactersProvider() {
    getAllCharacters();
  }

  void getAllCharacters() async {
    var repository = getIt.get<CharacterRepository>();
    charactersList = await repository.getAllCharacters();
    notifyListeners();
  }
}
