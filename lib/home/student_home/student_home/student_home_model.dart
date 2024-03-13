import '/app_component/student_navbar/student_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/student_home/student_channel/student_channelsearch/student_channelsearch_widget.dart';
import 'student_home_widget.dart' show StudentHomeWidget;
import 'package:flutter/material.dart';

class StudentHomeModel extends FlutterFlowModel<StudentHomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for student_channelsearch component.
  late StudentChannelsearchModel studentChannelsearchModel;
  // Model for student_navbar component.
  late StudentNavbarModel studentNavbarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    studentChannelsearchModel =
        createModel(context, () => StudentChannelsearchModel());
    studentNavbarModel = createModel(context, () => StudentNavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    studentChannelsearchModel.dispose();
    studentNavbarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
