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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        color: Colors.red,
        height: MediaQuery.of(context).size.height,
        child: FittedBox(
          fit: BoxFit.cover,
          child: Image.network(character.image),
        ),
      ),
    );
  }
}
