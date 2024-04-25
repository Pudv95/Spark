import 'package:Spark/generator.dart';

class RoutingManagement extends FolderGenerator {
  void initialiseRouting() {
    createSubDirectories('lib/utils', ['routes']);
    createFiles('lib/utils/routes', 'routes.dart', '');
    createFiles('lib/utils/routes', 'route_constants.dart', '');
  }
}
