import 'dart:io';

import 'package:df_builder/df_builder.dart';
import 'package:lighthouse/src/helpers/file.dart';
import 'package:lighthouse/src/helpers/string.dart';
import 'package:recase/recase.dart';
import '../../enums.dart';

class LocaleMakeCommand {
  Future<void> handle(Iterable<String> args) async {
    // final jsonAssets = await loadDirectoryFiles('./assets/lang/');
    // // TODO :: validate in check more than one file

    // final languages =
    //     jsonAssets.map((f) => f.path.split('/').last.replaceAll('.json', ''));

    final content = await readJsonContent('./assets/lang/ar.json');

    final dfBulder = DartFileBuilder(
      imports: ["import 'package:nations/nations.dart';"],
      topComments: ['/// ! This File is Generated by LH DO NOT EDIT 👑'],
      name: 'nations_gen.dart',
      path: '',
    );

    final trGetters = buildClassGetters(map: content, dfBuilder: dfBulder);

    dfBulder.addClass(ClassBuilder(
      name: 'Tr',
      havePrivateConstractor: true,
      getters: trGetters,
    ));

    /// generateed files
    if (!Directory('./lib/queen').existsSync()) {
      await Directory('./lib/queen').create();
    }
    if (!Directory('./lib/queen/assets').existsSync()) {
      await Directory('./lib/queen/assets').create();
    }
    final genFile = File('./lib/queen/assets/tr.dart');
    if (await genFile.exists()) await genFile.delete();
    await genFile.writeAsString(dfBulder.toString());
    // await genFile.writeAsString('$interfacesBuffer \n $cBuilder ');
    // TODO :: format file after its generated
  }
}

ClassBuilder buildInterface(
  String key,
  Map<String, dynamic> map,
  DartFileBuilder dfBuilder, {
  List<String> parents = const [],
}) {
  final getters = buildClassGetters(
    map: map,
    dfBuilder: dfBuilder,
    parents: parents,
    useStaticGetters: false,
  );

  return ClassBuilder(
    havePrivateConstractor: false,
    name: buildInterfaceName(key),
    classProps: [
      ClassProp(
        addToConstructor: true,
        name: 'key',
        type: 'String',
      )
    ],
    getters: getters,
  );
}

String buildInterfaceName(String key) => '_${key.pascalCase}Interface';

List<ClassGetter> buildClassGetters({
  List<String> parents = const [],
  required Map<String, dynamic> map,
  required DartFileBuilder dfBuilder,
  bool useStaticGetters = true,
}) {
  final getters = <ClassGetter>[];
  for (final key in map.keys) {
    final newParents = [...parents, key];
    switch (feildType(map[key])) {
      case ValueType.string:
        getters.add(
          ClassGetter(
            isStatic: useStaticGetters,
            name: key,
            type: 'String',
            whatToReturn: buildKeyWithParents(key, newParents),
          ),
        );
        break;
      case ValueType.gender:
      case ValueType.nested:
        dfBuilder.addClass(
          buildInterface(key, map[key], dfBuilder, parents: newParents),
        );
        getters.add(
          ClassGetter(
            isStatic: useStaticGetters,
            name: key,
            type: buildInterfaceName(key),
            whatToReturn: "${buildInterfaceName(key)}('$key')",
          ),
        );

        break;
    }
  }
  return getters;
}

String buildKeyWithParents(String key, List<String> parents) {
  if (parents.length < 2) {
    return "'$key'.tr";
  } else {
    final buf = StringBuffer();
    for (final p in parents) {
      buf.write(p);
      if (parents.last != p) buf.write('.');
    }

    return "'${buf.toString()}'.tr";
  }
}