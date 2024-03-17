import '/backend/backend.dart';
import '/chatfirebase/chat_messages_details/chat_messages_details_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'messages_widget.dart' show MessagesWidget;
import 'package:flutter/material.dart';

class MessagesModel extends FlutterFlowModel<MessagesWidget> {
  ///  Local state fields for this component.

  List<String> attachedImages = [];
  void addToAttachedImages(String item) => attachedImages.add(item);
  void removeFromAttachedImages(String item) => attachedImages.remove(item);
  void removeAtIndexFromAttachedImages(int index) =>
      attachedImages.removeAt(index);
  void insertAtIndexInAttachedImages(int index, String item) =>
      attachedImages.insert(index, item);
  void updateAttachedImagesAtIndex(int index, Function(String) updateFn) =>
      attachedImages[index] = updateFn(attachedImages[index]);

  bool showImages = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // Models for chat_MessagesDetails dynamic component.
  late FlutterFlowDynamicModels<ChatMessagesDetailsModel>
      chatMessagesDetailsModels;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  ListMessagesChatRecord? createdDocument;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    listViewController = ScrollController();
    chatMessagesDetailsModels =
        FlutterFlowDynamicModels(() => ChatMessagesDetailsModel());
  }

  @override
  void dispose() {
    listViewController?.dispose();
    chatMessagesDetailsModels.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
