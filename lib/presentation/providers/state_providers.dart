import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'state_providers.g.dart';

@Riverpod(keepAlive: true)
class Counter extends _$Counter {
  @override
  int build() {
    return 5;
  }

  void increaseByOne() {
    state++;
  }
}

@Riverpod(keepAlive: true)
class DarkMode extends _$DarkMode {
  @override
  bool build() {
    return false;
  }

  toggleDarkMode() {
    state = !state;
  }
}

@riverpod
class UserName extends _$UserName {
  @override
  String build() {
    return 'Naomi Alejandra Contreras Solis';
  }

  changeName(String newName) {
    state = newName;
  }
}
