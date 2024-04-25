import 'package:Spark/routing.dart';
import 'package:args/args.dart';
import 'package:Spark/asset_management.dart';
import 'package:Spark/generator.dart';
import 'package:Spark/add_feature.dart';

/// The main entry point of the application.
void main(List<String> arguments) {
  // Initialize the ArgParser
  final argParser = ArgParser();

  // Add commands
  argParser.addCommand('create', argParser);
  argParser.addCommand('getAssets', argParser);
  argParser.addCommand('init_routes', argParser);

  // Add options
  argParser.addOption('addFeature', abbr: 'f', help: 'Add a new feature');
  argParser.addOption('removeFeature',
      abbr: 'r', help: 'Removes an existing feature');

  // Parse arguments
  final argResults = argParser.parse(arguments);

  // Initialize objects
  final FolderGenerator folderGenerator = FolderGenerator();
  final AssetManagement assetManagement = AssetManagement();
  final RoutingManagement routingManagement = RoutingManagement();

  // Check which command or option was provided and take appropriate actions
  if (argResults.command?.name == 'create') {
    // If 'create' command was provided
    folderGenerator.generate(); // Generate folders
  } else if (argResults.command?.name == 'getAssets') {
    // If 'getAssets' command was provided
    assetManagement.getAllAssets(); // Retrieve all assets
  } else if (argResults.command?.name == 'init_routes') {
    // If 'init_routes' command was provided
    routingManagement.initialiseRouting(); // Initialize routing
  } else if (argResults['addFeature'] != null) {
    // If 'addFeature' option was provided
    final featureName = argResults['addFeature'] as String;
    final Features features = Features(featureName: featureName);
    features.generateFeature(); // Generate the specified feature
  } else if (argResults['removeFeature'] != null) {
    // If 'removeFeature' option was provided
    final featureName = argResults['removeFeature'] as String;
    final Features features = Features(featureName: featureName);
    features.removeFeature(); // Remove the specified feature
  } else {
    // If none of the expected commands or options were provided
    print('This command is not recognized. Please try again.');
  }
}
