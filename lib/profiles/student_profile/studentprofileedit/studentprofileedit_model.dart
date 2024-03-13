import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'studentprofileedit_widget.dart' show StudentprofileeditWidget;
import 'package:flutter/material.dart';

class StudentprofileeditModel
    extends FlutterFlowModel<StudentprofileeditWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameController;
  String? Function(BuildContext, String?)? fullNameControllerValidator;
  String? _fullNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the  full name.';
    }

    return null;
  }

  // State field(s) for rollno widget.
  FocusNode? rollnoFocusNode;
  TextEditingController? rollnoController;
  String? Function(BuildContext, String?)? rollnoControllerValidator;
  String? _rollnoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter the Roll no ';
    }

    return null;
  }

  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneController;
  String? Function(BuildContext, String?)? phoneControllerValidator;
  String? _phoneControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for gender widget.
  FormFieldController<List<String>>? genderValueController;
  String? get genderValue => genderValueController?.value?.firstOrNull;
  set genderValue(String? val) =>
      genderValueController?.value = val != null ? [val] : [];
  // State field(s) for branch widget.
  String? branchValue;
  FormFieldController<String>? branchValueController;
  // State field(s) for year widget.
  String? yearValue;
  FormFieldController<String>? yearValueController;
  // State field(s) for section widget.
  String? sectionValue;
  FormFieldController<String>? sectionValueController;
  // Stores action output result for [Backend Call - API (Update student)] action in Button widget.
  ApiCallResponse? apistudentprofileedit;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    fullNameControllerValidator = _fullNameControllerValidator;
    rollnoControllerValidator = _rollnoControllerValidator;
    phoneControllerValidator = _phoneControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    fullNameFocusNode?.dispose();
    fullNameController?.dispose();

    rollnoFocusNode?.dispose();
    rollnoController?.dispose();

    phoneFocusNode?.dispose();
    phoneController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
