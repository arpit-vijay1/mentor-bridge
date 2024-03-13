import '/app_component/student_navbar/student_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'student_message_widget.dart' show StudentMessageWidget;
import 'package:flutter/material.dart';

class StudentMessageModel extends FlutterFlowModel<StudentMessageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for student_navbar component.
  late StudentNavbarModel studentNavbarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    studentNavbarModel = createModel(context, () => StudentNavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    studentNavbarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
