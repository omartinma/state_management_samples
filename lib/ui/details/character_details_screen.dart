import 'package:flutter/material.dart';
import 'package:state_management_samples/core/providers/character_details_provider.dart';
import 'package:provider/provider.dart';

class CharacterDetails extends StatelessWidget {
  const CharacterDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<CharacterDetailsProvider>(context);
    var character = provider.characterSelected;

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Image.network(character.image),
      ),
    );
  }
}
