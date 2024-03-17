import '/app_component/student_navbar/student_navbar_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'chat_main_widget.dart' show ChatMainWidget;
import 'package:flutter/material.dart';

class ChatMainModel extends FlutterFlowModel<ChatMainWidget> {
  ///  Local state fields for this page.

  ChatsListRecord? chatRef;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for student_navbar component.
  late StudentNavbarModel studentNavbarModel;

  /// Query cache managers for this widget.

  final _userChatManager = FutureRequestManager<UsersRecord>();
  Future<UsersRecord> userChat({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<UsersRecord> Function() requestFn,
  }) =>
      _userChatManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUserChatCache() => _userChatManager.clear();
  void clearUserChatCacheKey(String? uniqueKey) =>
      _userChatManager.clearRequest(uniqueKey);

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    studentNavbarModel = createModel(context, () => StudentNavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    studentNavbarModel.dispose();

    /// Dispose query cache managers for this widget.

    clearUserChatCache();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
