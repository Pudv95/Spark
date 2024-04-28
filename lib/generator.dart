import 'dart:io';

/// A class that generates the necessary folders for a project.
class FolderGenerator {
  String libDirectory;
  String assetsDirectory;

  /// Constructs a [FolderGenerator] instance.
  FolderGenerator({this.libDirectory = 'lib', this.assetsDirectory = 'assets'});

  /// Generates the required folders.
  void generate() {
    createSubDirectories(libDirectory, [
      'features',
      'models',
      'services',
      'utils',
    ]);
    createSubDirectories(assetsDirectory, [
      'images',
      'fonts',
      'icons',
    ]);
  }

  /// Creates subdirectories within the specified parent directory.
  ///
  /// The [parentDirectory] is the parent directory where the subdirectories will be created.
  /// The [subDirectoryNames] is a list of names for the subdirectories to be created.

  void createSubDirectories(
      String parentDirectory, List<String> subDirectoryNames) {
    for (var subDirectoryName in subDirectoryNames) {
      final Directory subDirectory =
          Directory('$parentDirectory/$subDirectoryName');
      if (!subDirectory.existsSync()) {
        subDirectory.createSync(recursive: true);
        print('Created folder: $parentDirectory/$subDirectoryName');
      }
    }
  }

  void createFiles(String parentDirectory, String fileNames, String content) {
    final File file = File('$parentDirectory/$fileNames');
    if (!file.existsSync()) {
      file.writeAsStringSync(content);
      print('Created file: $parentDirectory/$fileNames');
    }
  }

  static void writeInFile(
      String content, String parentDirectory, String fileNames) {
    final File file = File('$parentDirectory/$fileNames');
    if (file.existsSync()) {
      file.writeAsStringSync(content, mode: FileMode.writeOnlyAppend);
      print('Updated file: $parentDirectory/$fileNames');
    } else {
      print('File not found: $parentDirectory/$fileNames');
    }
  }
}
