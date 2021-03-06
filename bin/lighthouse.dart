import 'package:args/command_runner.dart';
import 'package:lighthouse/src/commands/assets/add.dart';
import 'package:lighthouse/src/commands/assets/make.dart';
import 'package:lighthouse/src/commands/pub/unused.dart';
import 'package:lighthouse/src/commands/tr/make.dart';
import 'package:lighthouse/src/commands/tr/validate.dart';
import 'package:lighthouse/src/exceptions/tr_exception.dart';

Future<void> main(List<String> args) async {
  try {
    final runner =
        CommandRunner('lh, lighthouse', ' โก : CLI For Flutter Queen ๐ .');
    final commands = <Command>[
      // * Localization
      // generate `Tr` class
      TRMakeCommand(),
      // validate localizations assets content
      TrValidateCommand(),

      // * Assets
      // generate assets
      AssetsMakeCommand(),
      // add assets
      AssetsAddCommand(),

      /// * pub
      RemoveUnUsedPackagesCommand(),
    ];

    ///  * add commands to the runner
    commands.forEach(runner.addCommand);
    await runner.run(args);
  } on TrException catch (e) {
    print('๐กโ:: Can\'t Generate TR File !\n$e');
  } catch (e) {
    // print(st);
    print(e.toString());
  }
}
