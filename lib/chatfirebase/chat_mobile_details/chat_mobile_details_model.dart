import '/chatfirebase/messages/messages_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_mobile_details_widget.dart' show ChatMobileDetailsWidget;
import 'package:flutter/material.dart';

class ChatMobileDetailsModel extends FlutterFlowModel<ChatMobileDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for messages component.
  late MessagesModel messagesModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    messagesModel = createModel(context, () => MessagesModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    messagesModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
