import '/flutter_flow/flutter_flow_util.dart';
import 'text_field_password_widget.dart' show TextFieldPasswordWidget;
import 'package:flutter/material.dart';

class TextFieldPasswordModel extends FlutterFlowModel<TextFieldPasswordWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Input widget.
  FocusNode? inputFocusNode;
  TextEditingController? inputTextController;
  late bool inputVisibility;
  String? Function(BuildContext, String?)? inputTextControllerValidator;

  @override
  void initState(BuildContext context) {
    inputVisibility = false;
  }

  @override
  void dispose() {
    inputFocusNode?.dispose();
    inputTextController?.dispose();
  }
}
