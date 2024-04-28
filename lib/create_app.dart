import 'dart:io';

import 'package:Spark/generator.dart';

class CreateApp {
  void createApp(String myApp) {
    Process.run('flutter', ['create', myApp], runInShell: true).then((result) {
      if (result.exitCode == 0) {
        FolderGenerator(
                libDirectory: '$myApp/lib', assetsDirectory: '$myApp/assets')
            .generate();
        updatePubspecYaml();
        getDependencies();
      } else {
        print('Error creating Flutter project: ${result.stderr}');
      }
    });
  }

  void getDependencies() {
    Process.run('flutter', ['pub', 'get'], runInShell: true).then((result) {
      if (result.exitCode == 0) {
        print('Dependencies fetched successfully');
      } else {
        print('Error fetching dependencies: ${result.stderr}');
      }
    });
  }

  void updatePubspecYaml() {
    FolderGenerator.writeInFile('''  assets:
    - assets/images/
    - assets/icons/
''', 'myapp', 'pubspec.yaml');
  }
}
