import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_annotations/config/config.dart';

part 'stream_provider.g.dart';

@Riverpod(keepAlive: true)
Stream<List<String>> usersInChat(UsersInChatRef ref) async* {
  final names = <String>[];
  await for (final name in RandomGenerator.randomNameStream()) {
    names.add(name);
    yield names;
  }
}
