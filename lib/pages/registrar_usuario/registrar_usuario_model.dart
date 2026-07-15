import '/components/button/button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'registrar_usuario_widget.dart' show RegistrarUsuarioWidget;
import 'package:flutter/material.dart';

class RegistrarUsuarioModel extends FlutterFlowModel<RegistrarUsuarioWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextNombre widget.
  FocusNode? textNombreFocusNode;
  TextEditingController? textNombreTextController;
  String? Function(BuildContext, String?)? textNombreTextControllerValidator;
  String? _textNombreTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nombre Completo is required';
    }

    return null;
  }

  // State field(s) for TextEmail widget.
  FocusNode? textEmailFocusNode;
  TextEditingController? textEmailTextController;
  String? Function(BuildContext, String?)? textEmailTextControllerValidator;
  String? _textEmailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Correo is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for TextPass widget.
  FocusNode? textPassFocusNode;
  TextEditingController? textPassTextController;
  late bool textPassVisibility;
  String? Function(BuildContext, String?)? textPassTextControllerValidator;
  String? _textPassTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Contraseña is required';
    }

    if (val.length < 6) {
      return 'Requires at least 6 characters.';
    }

    return null;
  }

  // State field(s) for TextPassConf widget.
  FocusNode? textPassConfFocusNode;
  TextEditingController? textPassConfTextController;
  late bool textPassConfVisibility;
  String? Function(BuildContext, String?)? textPassConfTextControllerValidator;
  String? _textPassConfTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirmar Contraseña is required';
    }

    if (val.length < 6) {
      return 'Requires at least 6 characters.';
    }

    return null;
  }

  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for Button.
  late ButtonModel buttonModel2;

  @override
  void initState(BuildContext context) {
    textNombreTextControllerValidator = _textNombreTextControllerValidator;
    textEmailTextControllerValidator = _textEmailTextControllerValidator;
    textPassVisibility = false;
    textPassTextControllerValidator = _textPassTextControllerValidator;
    textPassConfVisibility = false;
    textPassConfTextControllerValidator = _textPassConfTextControllerValidator;
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    textNombreFocusNode?.dispose();
    textNombreTextController?.dispose();

    textEmailFocusNode?.dispose();
    textEmailTextController?.dispose();

    textPassFocusNode?.dispose();
    textPassTextController?.dispose();

    textPassConfFocusNode?.dispose();
    textPassConfTextController?.dispose();

    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
