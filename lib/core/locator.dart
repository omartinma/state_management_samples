import 'package:get_it/get_it.dart';
import 'package:state_management_samples/core/repositories/character_repository.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<CharacterRepository>(CharacterRepository());
}
