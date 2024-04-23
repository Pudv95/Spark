import 'package:args/args.dart';
import 'package:Spark/asset_management.dart';
import 'package:Spark/generator.dart';

/// The main entry point of the application.
void main(List<String> arguments) {
  final ArgParser argParser = ArgParser();

  argParser.addCommand('create', argParser);
  argParser.addCommand('getAssets', argParser);
  ArgResults argResults = argParser.parse(arguments);
  final FolderGenerator folderGenerator = FolderGenerator();
  final AssetManagement assetManagement = AssetManagement();

  if (argResults.command?.name == 'create') {
    folderGenerator.generate();
  }

  if (argResults.command?.name == 'getAssets') {
    assetManagement.getAllAssets();
  }
}
