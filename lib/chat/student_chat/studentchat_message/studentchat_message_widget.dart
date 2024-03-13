import '/chat/student_chat/studentchatcomponent/studentchatcomponent_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'studentchat_message_model.dart';
export 'studentchat_message_model.dart';

class StudentchatMessageWidget extends StatefulWidget {
  const StudentchatMessageWidget({super.key});

  @override
  State<StudentchatMessageWidget> createState() =>
      _StudentchatMessageWidgetState();
}

class _StudentchatMessageWidgetState extends State<StudentchatMessageWidget> {
  late StudentchatMessageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StudentchatMessageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xF2FFFFFF),
        body: wrapWithModel(
          model: _model.studentchatcomponentModel,
          updateCallback: () => setState(() {}),
          child: const StudentchatcomponentWidget(),
        ),
      ),
    );
  }
}
