import 'package:flutter_spark/create_app.dart';
import 'package:flutter_spark/routing.dart';
import 'package:args/args.dart';
import 'package:flutter_spark/asset_management.dart';
import 'package:flutter_spark/generator.dart';
import 'package:flutter_spark/add_feature.dart';

/// The main entry point of the application.
void main(List<String> arguments) {
  // Initialize argument parser
  final argParser = ArgParser();

  // Add commands
  argParser.addCommand('init', argParser);
  argParser.addCommand('create', argParser);
  argParser.addOption('add_feature', abbr: 'a', help: 'Add a new feature');
  argParser.addOption('remove_feature',
      abbr: 'r', help: 'Removes an existing feature');

  // Parse command line arguments
  final argResults = argParser.parse(arguments);

  // Initialize necessary classes
  final FolderGenerator folderGenerator = FolderGenerator();
  final AssetManagement assetManagement = AssetManagement();
  final RoutingManagement routingManagement = RoutingManagement();
  final CreateApp createApp = CreateApp();

  // Execute commands based on parsed arguments
  if (argResults.command?.name == 'create') {
    String? appName = argResults.command?.rest[0];
    if (appName == null) {
      print('Please provide a name for the app');
      return;
    } else {
      createApp.createApp(appName);
    }
  } else if (argResults.command?.name == 'init') {
    if (argResults.command?.rest[0] == 'folders') {
      // Initialize folder structure
      folderGenerator.generate();
    } else if (argResults.command?.rest[0] == 'assets') {
      // Manage assets
      assetManagement.getAllAssets();
    } else if (argResults.command?.rest[0] == 'routes') {
      // Initialize routing
      routingManagement.initialiseRouting();
    } else {
      // Command not recognized
      print('This command is not recognized. Please try again.');
    }
  }

  // Add feature if specified
  if (argResults['add_feature'] != null) {
    final featureName = argResults['add_feature'] as String;
    final Features features = Features(featureName: featureName);
    features.generateFeature();
  }

  // Remove feature if specified
  if (argResults['remove_feature'] != null) {
    final featureName = argResults['remove_feature'] as String;
    final Features features = Features(featureName: featureName);
    features.removeFeature();
  }
}
