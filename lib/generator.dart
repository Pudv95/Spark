import 'dart:io';

/// A class that generates the necessary folders for a project.
class FolderGenerator {
  final String libDirectory = 'lib';
  final String assetsDirectory = 'assets';

  /// Constructs a [FolderGenerator] instance.
  FolderGenerator();

  /// Generates the required folders.
  void generate() {
    _createSubDirectories(libDirectory, [
      'screens',
      'models',
      'services',
      'utils',
      'constants',
    ]);
    _createSubDirectories(assetsDirectory, [
      'images',
      'fonts',
      'icons',
    ]);
  }

  /// Creates subdirectories within the specified parent directory.
  ///
  /// The [parentDirectory] is the parent directory where the subdirectories will be created.
  /// The [subDirectoryNames] is a list of names for the subdirectories to be created.

  void _createSubDirectories(
      String parentDirectory, List<String> subDirectoryNames) {
    subDirectoryNames.forEach((subDirectoryName) {
      final Directory subDirectory =
          Directory('$parentDirectory/$subDirectoryName');
      if (!subDirectory.existsSync()) {
        subDirectory.createSync(recursive: true);
        print('Created folder: $parentDirectory/$subDirectoryName');
      }
    });
  }
}
