import 'dart:convert';

import 'package:state_management_samples/core/models/character.dart';
import 'package:http/http.dart' as http;

class CharacterRepository {
  String url = "https://rickandmortyapi.com/api/character";

  Future<List<Character>> getAllCharacters() async {
    var response = await http.get(url);
    var responseDecoded = jsonDecode(response.body);
    var results = responseDecoded['results'] as List;

    var characters = results.map((e) => Character.fromMap(e)).toList();

    return characters;
  }
}
