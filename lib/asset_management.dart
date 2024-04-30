import 'dart:io';
import 'package:path/path.dart' as path;

/// A class for managing assets in a directory.
class AssetManagement {
  /// Retrieves all assets in the 'assets' directory and creates a manager for each subdirectory.
  void getAllAssets() async {
    final dir = Directory('assets');
    final List<FileSystemEntity> entities = await dir.list().toList();
    for (final entity in entities) {
      if (entity is! File &&
          path.basename(path.withoutExtension(entity.path)).toLowerCase() !=
              'fonts') {
        final dire = Directory(entity.path);
        final List<FileSystemEntity> assets = await dire.list().toList();
        List<File> assetNames = [];
        for (final asset in assets) {
          assetNames.add(asset as File);
        }
        createManager(dire, assetNames);
      }
    }
  }

  /// Creates a manager for the given directory and list of assets.
  void createManager(Directory dir, List<File> assets) {
    final String folderName = path.basename(dir.path);
    final String className = folderName.split('_').map((word) {
      return word[0].toUpperCase() + word.substring(1);
    }).join();
    final String dartCode = assets.map((file) {
      String fileName = parseName(path.basenameWithoutExtension(file.path));
      String filePath = file.path.replaceAll('\\', '/');
      return 'static const String $fileName = "$filePath";';
    }).join('\n\t');

    final String fullDartCode = '''
class My$className {
  $dartCode
}
''';

    final Directory folderDirectory = Directory('lib/utils/const/$folderName');
    if (!folderDirectory.existsSync()) {
      folderDirectory.createSync(recursive: true);
    }

    final File managerFile = File('${folderDirectory.path}/$folderName.dart');

    managerFile.writeAsStringSync(fullDartCode);

    print('Created Dart file: ${managerFile.path}');
  }

  /// Parses the name of the asset file to a valid Dart variable name.
  String parseName(String name) {
    // Check if the name is empty
    if (name.isEmpty) {
      return 'unNamed';
    }
    // Remove special characters and split the name into words
    List<String> words =
        name.replaceAll(RegExp(r'[^a-zA-Z0-9\s]'), '').split(RegExp(r'[_\s]'));
    print(words);
    // Check if the name contains only numbers
    if (words.every((word) => int.tryParse(word) != null)) {
      return 'unKnown';
    }
    // Capitalize the first letter of each word
    String result = words[0].toLowerCase();
    for (int i = 1; i < words.length; i++) {
      if (words[i].isNotEmpty) {
        result += words[i][0].toUpperCase() + words[i].substring(1);
      }
    }
    return result;
  }
}
