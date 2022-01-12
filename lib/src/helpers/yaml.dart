import 'dart:io';

import 'package:yaml/yaml.dart';

// Future<Iterable<String>> getYamlAssets() async {
//   /// `pubspec.yaml` content as a [String]
//   final content = await readFileContent('pubspec.yaml');
//   // convert to [YamlMap]
//   final yaml = loadYaml(content) as YamlMap;
//   return (yaml['flutter']['assets'] as YamlList?)?.map((e) => e.toString()) ??
//       [];
// }

// Iterable<MapEntry> getAppDependencies() {
//   final YamlMap? yaml =
//       loadYaml(File('./pubspec.yaml').readAsStringSync())['dependencies'];
//   return yaml?.entries ?? [];
// }

Future<YamlList> getPubspecAssetsYaml(
  File file,
) async =>
    loadYaml((await file.readAsString()))['flutter']['assets'];
