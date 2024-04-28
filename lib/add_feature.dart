import 'dart:io';
import 'package:flutter_spark/generator.dart';

/// A class that represents a feature in the application.
class Features extends FolderGenerator {
  String? featureName;

  /// Constructs a new [Features] instance with the given [featureName].
  Features({required this.featureName});

  /// Generates the feature by creating subdirectories for screens, controller, and model.
  void generateFeature() {
    createSubDirectories(
        'lib/features/$featureName', ['screens', 'controller', 'model']);
    createSubDirectories('/lib/features/$featureName/screens', ['widgets']);
  }

  void removeFeature() {
    if (featureName == null) {
      print('Please provide a feature name');
      return;
    }
    final Directory featureDirectory = Directory('lib/features/$featureName');
    if (featureDirectory.existsSync()) {
      featureDirectory.deleteSync(recursive: true);
      print('Removed feature: $featureName');
    } else {
      print('Feature does not exist');
    }
  }
}
