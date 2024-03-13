import '/app_component/student_navbar/student_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'student_profile_widget.dart' show StudentProfileWidget;
import 'package:flutter/material.dart';

class StudentProfileModel extends FlutterFlowModel<StudentProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for student_navbar component.
  late StudentNavbarModel studentNavbarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    studentNavbarModel = createModel(context, () => StudentNavbarModel());
  }

  @override
  void dispose() {
    studentNavbarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
