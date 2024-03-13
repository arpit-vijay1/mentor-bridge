import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'verifyemail_widget.dart' show VerifyemailWidget;
import 'package:flutter/material.dart';

class VerifyemailModel extends FlutterFlowModel<VerifyemailWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for otp widget.
  TextEditingController? otp;
  String? Function(BuildContext, String?)? otpValidator;
  String? _otpValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'otp is required';
    }
    if (val.length < 6) {
      return 'Requires 6 characters.';
    }
    return null;
  }

  // Stores action output result for [Backend Call - API (Verify email)] action in Button widget.
  ApiCallResponse? verifyEmailRes;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    otp = TextEditingController();
    otpValidator = _otpValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    otp?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
