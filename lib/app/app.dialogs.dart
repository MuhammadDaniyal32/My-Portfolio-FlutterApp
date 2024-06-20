// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedDialogGenerator
// **************************************************************************

import 'package:stacked_services/stacked_services.dart';

import 'app.locator.dart';
import '../ui/dialogs/project_details/project_details_dialog.dart';

enum DialogType {
  projectDetails,
}

void setupDialogUi() {
  final dialogService = locator<DialogService>();

  final Map<DialogType, DialogBuilder> builders = {
    DialogType.projectDetails: (context, request, completer) =>
        ProjectDetailsDialog(request: request, completer: completer),
  };

  dialogService.registerCustomDialogBuilders(builders);
}
