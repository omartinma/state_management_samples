import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_samples/core/providers/characters_provider.dart';
import 'package:state_management_samples/ui/home/character_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Management Sample"),
      ),
      body: HomeList(),
    );
  }
}

class HomeList extends StatelessWidget {
  const HomeList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<CharactersProvider>();
    //Provider.of(context) es lo mismo que watch

    var characters = provider.charactersList;
    return ListView.builder(
      itemBuilder: (context, index) => CharacterCard(
        character: characters[index],
      ),
      itemCount: characters.length,
    );
  }
}
