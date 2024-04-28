import 'dart:io';
import 'package:flutter_spark/generator.dart';

class CreateApp {
  void createApp(String myApp) {
    Process.run('flutter', ['create', myApp], runInShell: true).then((result) {
      if (result.exitCode == 0) {
        FolderGenerator(
                libDirectory: '$myApp/lib', assetsDirectory: '$myApp/assets')
            .generate();
        updatePubspecYaml(myApp);
        getDependencies(myApp);
      } else {
        print('Error creating Flutter project: ${result.stderr}');
      }
    });
  }

  void getDependencies(String appName) {
    Process.run('cd', ['./$appName', '&&', 'flutter', 'pub', 'get'],
            runInShell: true)
        .then((result) {
      if (result.exitCode == 0) {
        print('Dependencies fetched successfully');
      } else {
        print('Error fetching dependencies: ${result.stderr}');
      }
    });
  }

  void updatePubspecYaml(String appName) {
    FolderGenerator.writeInFile('''  assets:
    - assets/images/
    - assets/icons/
''', appName, 'pubspec.yaml');
  }
}
