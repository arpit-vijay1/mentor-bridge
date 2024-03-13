import '/chat/student_chat/studentchatcomponent/studentchatcomponent_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'studentchat_message_widget.dart' show StudentchatMessageWidget;
import 'package:flutter/material.dart';

class StudentchatMessageModel
    extends FlutterFlowModel<StudentchatMessageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for studentchatcomponent component.
  late StudentchatcomponentModel studentchatcomponentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    studentchatcomponentModel =
        createModel(context, () => StudentchatcomponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    studentchatcomponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
