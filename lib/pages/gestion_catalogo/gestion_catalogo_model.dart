import '/components/button/button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'gestion_catalogo_widget.dart' show GestionCatalogoWidget;
import 'package:flutter/material.dart';

class GestionCatalogoModel extends FlutterFlowModel<GestionCatalogoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late ButtonModel buttonModel1;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    buttonModel1.dispose();
  }
}
