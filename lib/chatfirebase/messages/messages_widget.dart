import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/chatfirebase/chat_messages_details/chat_messages_details_widget.dart';
import '/chatfirebase/empty_list_view/empty_list_view_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'messages_model.dart';
export 'messages_model.dart';

class MessagesWidget extends StatefulWidget {
  const MessagesWidget({
    super.key,
    this.chatListRef,
  });

  final ChatsListRecord? chatListRef;

  @override
  State<MessagesWidget> createState() => _MessagesWidgetState();
}

class _MessagesWidgetState extends State<MessagesWidget> {
  late MessagesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MessagesModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.updatePage(() {
        _model.showImages = false;
      });
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 0.0, 0.0),
      child: ClipRRect(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 0.0,
                color: FlutterFlowTheme.of(context).alternate,
                offset: const Offset(-1.0, 0.0),
              )
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: StreamBuilder<List<ListMessagesChatRecord>>(
                  stream: queryListMessagesChatRecord(
                    queryBuilder: (listMessagesChatRecord) =>
                        listMessagesChatRecord
                            .where(
                              'chatList',
                              isEqualTo: widget.chatListRef?.reference,
                            )
                            .orderBy('timeCreated', descending: true),
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 10.0,
                          height: 10.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).warning,
                            ),
                          ),
                        ),
                      );
                    }
                    List<ListMessagesChatRecord>
                        listViewListMessagesChatRecordList = snapshot.data!;
                    if (listViewListMessagesChatRecordList.isEmpty) {
                      return const Center(
                        child: EmptyListViewWidget(),
                      );
                    }
                    return ListView.builder(
                      padding: const EdgeInsets.fromLTRB(
                        0,
                        12.0,
                        0,
                        44.0,
                      ),
                      reverse: true,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewListMessagesChatRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewListMessagesChatRecord =
                            listViewListMessagesChatRecordList[listViewIndex];
                        return Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.chatMessagesDetailsModels.getModel(
                              listViewListMessagesChatRecord.reference.id,
                              listViewIndex,
                            ),
                            updateCallback: () => setState(() {}),
                            child: ChatMessagesDetailsWidget(
                              key: Key(
                                'Keylil_${listViewListMessagesChatRecord.reference.id}',
                              ),
                              chatMessageRef: listViewListMessagesChatRecord,
                            ),
                          ),
                        );
                      },
                      controller: _model.listViewController,
                    );
                  },
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 3.0,
                      color: Color(0x33000000),
                      offset: Offset(0.0, -2.0),
                    )
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 0.0, 0.0),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller: _model.textController,
                                      focusNode: _model.textFieldFocusNode,
                                      autofocus: true,
                                      textCapitalization:
                                          TextCapitalization.sentences,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        hintText: 'Start typing here...',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelSmall,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                        ),
                                        contentPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                16.0, 12.0, 40.0, 12.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      maxLines: 12,
                                      minLines: 1,
                                      cursorColor:
                                          FlutterFlowTheme.of(context).primary,
                                      validator: _model.textControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(1.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 4.0, 4.0),
                                    child: FlutterFlowIconButton(
                                      borderColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: 20.0,
                                      borderWidth: 1.0,
                                      buttonSize: 40.0,
                                      fillColor:
                                          FlutterFlowTheme.of(context).accent1,
                                      icon: Icon(
                                        Icons.send_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 20.0,
                                      ),
                                      onPressed: () async {
                                        // createDocument

                                        var listMessagesChatRecordReference =
                                            ListMessagesChatRecord.collection
                                                .doc();
                                        await listMessagesChatRecordReference
                                            .set({
                                          ...createListMessagesChatRecordData(
                                            description:
                                                _model.textController.text,
                                            chatList:
                                                widget.chatListRef?.reference,
                                            timeCreated: getCurrentTimestamp,
                                            owner: currentUserReference,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'users':
                                                  widget.chatListRef?.users,
                                            },
                                          ),
                                        });
                                        _model.createdDocument =
                                            ListMessagesChatRecord
                                                .getDocumentFromData({
                                          ...createListMessagesChatRecordData(
                                            description:
                                                _model.textController.text,
                                            chatList:
                                                widget.chatListRef?.reference,
                                            timeCreated: getCurrentTimestamp,
                                            owner: currentUserReference,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'users':
                                                  widget.chatListRef?.users,
                                            },
                                          ),
                                        }, listMessagesChatRecordReference);
                                        // updateParentChat

                                        await widget.chatListRef!.reference
                                            .update({
                                          ...createChatsListRecordData(
                                            lastMessageSent:
                                                _model.textController.text,
                                            lastMessageSentTime:
                                                getCurrentTimestamp,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'usersNotified':
                                                  FieldValue.arrayUnion([
                                                widget.chatListRef?.users.last
                                              ]),
                                            },
                                          ),
                                        });
                                        setState(() {
                                          _model.textController?.clear();
                                        });
                                        // hideIMages
                                        _model.updatePage(() {
                                          _model.attachedImages = [];
                                          _model.showImages = false;
                                        });
                                        // scrollToENd
                                        await _model.listViewController
                                            ?.animateTo(
                                          0,
                                          duration: const Duration(milliseconds: 150),
                                          curve: Curves.ease,
                                        );

                                        setState(() {});
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
