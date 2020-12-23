import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_samples/core/locator.dart';
import 'package:state_management_samples/core/providers/character_details_provider.dart';
import 'package:state_management_samples/core/providers/characters_provider.dart';
import 'package:state_management_samples/ui/home/home_screen.dart';

void main() {
  setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CharacterDetailsProvider()),
        ChangeNotifierProvider(create: (_) => CharactersProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: HomeScreen(),
      ),
    );
  }
}
