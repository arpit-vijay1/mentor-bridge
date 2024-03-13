import '/app_component/mentor_navbar/mentor_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mentor_profile_widget.dart' show MentorProfileWidget;
import 'package:flutter/material.dart';

class MentorProfileModel extends FlutterFlowModel<MentorProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for mentor_navbar component.
  late MentorNavbarModel mentorNavbarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    mentorNavbarModel = createModel(context, () => MentorNavbarModel());
  }

  @override
  void dispose() {
    mentorNavbarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
