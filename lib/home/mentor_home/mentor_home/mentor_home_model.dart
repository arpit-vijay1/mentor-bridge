import '/app_component/mentor_navbar/mentor_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mentor_home_widget.dart' show MentorHomeWidget;
import 'package:flutter/material.dart';

class MentorHomeModel extends FlutterFlowModel<MentorHomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
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
    textFieldFocusNode?.dispose();
    textController?.dispose();

    mentorNavbarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
