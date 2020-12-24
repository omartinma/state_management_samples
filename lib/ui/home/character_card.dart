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
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: NetworkImage(character.image),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              color: Colors.white.withOpacity(0.8),
              height: 30,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  character.name,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
