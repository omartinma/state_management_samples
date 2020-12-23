import 'package:flutter/material.dart';
import 'package:state_management_samples/core/models/character.dart';
import 'package:provider/provider.dart';
import 'package:state_management_samples/core/providers/character_details_provider.dart';
import 'package:state_management_samples/ui/details/character_details_screen.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({Key key, this.character}) : super(key: key);

  final Character character;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        context.read<CharacterDetailsProvider>().setCharacter(character);
        await Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CharacterDetails(),
          ),
        );
      },
      child: Card(
        child: Column(
          children: [
            Container(
              height: 100,
              child: Image.network(character.image),
            ),
            Text(character.name),
          ],
        ),
      ),
    );
  }
}
