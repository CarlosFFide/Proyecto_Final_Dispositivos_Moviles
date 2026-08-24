import '/components/button/button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'registrar_libro_widget.dart' show RegistrarLibroWidget;
import 'package:flutter/material.dart';

class RegistrarLibroModel extends FlutterFlowModel<RegistrarLibroWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextTitulo widget.
  FocusNode? textTituloFocusNode;
  TextEditingController? textTituloTextController;
  String? Function(BuildContext, String?)? textTituloTextControllerValidator;
  String? _textTituloTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Titulo is required';
    }

    return null;
  }

  // State field(s) for TextAutor widget.
  FocusNode? textAutorFocusNode;
  TextEditingController? textAutorTextController;
  String? Function(BuildContext, String?)? textAutorTextControllerValidator;
  String? _textAutorTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Autor is required';
    }

    return null;
  }

  // State field(s) for TextCategoria widget.
  String? textCategoriaValue;
  FormFieldController<String>? textCategoriaValueController;
  // State field(s) for TextDescripcion widget.
  FocusNode? textDescripcionFocusNode;
  TextEditingController? textDescripcionTextController;
  String? Function(BuildContext, String?)?
      textDescripcionTextControllerValidator;
  String? _textDescripcionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Escribe una breve descripción del libro... is required';
    }

    return null;
  }

  // State field(s) for Dropdown widget.
  String? dropdownValue;
  FormFieldController<String>? dropdownValueController;
  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for Button.
  late ButtonModel buttonModel2;

  @override
  void initState(BuildContext context) {
    textTituloTextControllerValidator = _textTituloTextControllerValidator;
    textAutorTextControllerValidator = _textAutorTextControllerValidator;
    textDescripcionTextControllerValidator =
        _textDescripcionTextControllerValidator;
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    textTituloFocusNode?.dispose();
    textTituloTextController?.dispose();

    textAutorFocusNode?.dispose();
    textAutorTextController?.dispose();

    textDescripcionFocusNode?.dispose();
    textDescripcionTextController?.dispose();

    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
