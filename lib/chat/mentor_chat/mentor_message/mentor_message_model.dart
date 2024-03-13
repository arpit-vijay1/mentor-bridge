import '/app_component/mentor_navbar/mentor_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mentor_message_widget.dart' show MentorMessageWidget;
import 'package:flutter/material.dart';

class MentorMessageModel extends FlutterFlowModel<MentorMessageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mentor_navbar component.
  late MentorNavbarModel mentorNavbarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    mentorNavbarModel = createModel(context, () => MentorNavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mentorNavbarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
