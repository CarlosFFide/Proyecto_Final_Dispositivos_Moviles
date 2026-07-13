import '/components/button/button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'pagina_bienvenida_widget.dart' show PaginaBienvenidaWidget;
import 'package:flutter/material.dart';

class PaginaBienvenidaModel extends FlutterFlowModel<PaginaBienvenidaWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    buttonModel.dispose();
  }
}
