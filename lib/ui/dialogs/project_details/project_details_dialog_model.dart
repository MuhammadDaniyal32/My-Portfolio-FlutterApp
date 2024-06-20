import 'package:my_portfolio_app/models/project_model.dart';
import 'package:my_portfolio_app/services/network/url_launcher_service.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';
import '../../../services/local/project_service.dart';

class ProjectDetailsDialogModel extends BaseViewModel{

  final ProjectService _projectService= locator<ProjectService>();
  final UrlLauncherService _urlLauncherService = locator<UrlLauncherService>();
  ProjectModel get selectedProject => _projectService.selectedProject;

  void openurl(String url) {
    _urlLauncherService.launchInBrowser(url);
  }

}